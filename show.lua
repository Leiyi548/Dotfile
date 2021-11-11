local r = vim.api.nvim_win_get_cursor(0) --获取数据
local current_line_number = r[1] --当前光标所在的行数
local current_column_number = r[2] --当前光标所在的列数
local show_at = current_line_number - 1
local current_line_text = vim.api.nvim_get_current_line() -- 获取当前行的数据
local current_line_text_width = vim.fn.strdisplaywidth(current_line_text)--获取当前行的宽度
local openfly_space = vim.api.nvim_create_namespace("openfly") -- 创建一个名为openfly的空间
local show_position_line_number -- 显示图标的位置行数
local previous_line_text --上一行的文本
local next_line_text --下一行的文本
local previous_line_text_width
local next_line_text_width
local hint_space = ""
local hint_space_length
--icon         
local hint_picture = "🐼"
--local hint_picture = ""
local hint_word = ""
local hint_wordList = {
  "Never say die.",
  "In doing we learn.",
  "Keep on going never give up.",
  "Sow nothing, reap nothing.",
  "God helps those who help themselves.",
  "Actions speak louder than words.",
  "The shortest answer is doing.",
  "Believe in yourself.",
  "Suffering is the most powerful teacher of life.",
  "Wasting time is robbing oneself.",
  "Nurture passes nature.",
  "A man’s best friends are his ten fingers.",
  "The best preparation for tomorrow is doing your best today.",
}
local function get_hint_word(List)
  math.randomseed(os.time())
  local hint_word_id = math.random(1,#List)
  return List[hint_word_id]
end
--开始判断图标所在的位置
--不在第一行

local function virtual_hint()
  if current_line_number > 1 then
    previous_line_text = vim.api.nvim_buf_get_lines(0,current_line_number - 2 ,current_line_number -1,false)[1]
  end
  next_line_text = vim.api.nvim_buf_get_lines(0,current_line_number,current_line_number +1,false)[1]
  previous_line_text_width = vim.fn.strdisplaywidth(previous_line_text)
  next_line_text_width = vim.fn.strdisplaywidth(next_line_text)


  if previous_line_text and previous_line_text_width < current_column_number then
    show_position_line_number = show_at - 1
    hint_space_length = current_line_text_width - previous_line_text_width
    hint_space = string.rep(" ",hint_space_length)
  elseif next_line_text and  current_column_number then
    show_position_line_number = show_at + 1
    hint_space_length = current_line_text_width - next_line_text_width
    hint_space = string.rep(" ",hint_space_length)
  else
    show_position_line_number = show_at
  end


  if current_column_number == 1 then
    show_position_line_number = 0
  end


  hint_word = get_hint_word(hint_wordList)
  local hint_opts = {
    virt_text = {{hint_space..hint_picture.."  "..hint_word}},
    virt_text_pos = 'eol',  --right after eol character (defaults)
  }
  vim.api.nvim_buf_clear_namespace(0,openfly_space,0,-1)
  vim.api.nvim_buf_set_extmark(0,openfly_space,show_position_line_number,0,hint_opts)
end

virtual_hint()
