-- WARN: Updating lexima rules

return {
  'cohama/lexima.vim',
  brach = 'master',

  config = function()
    local cmd = vim.api.nvim_command

    local call = function(command)
      local c = 'call lexima#add_rule(' .. command .. ')'

      cmd(c)
    end

    -- NOTE: Quotes '' and ""
    call "{'char': '\"', 'at': '\"\\S\\{-1,}\\%#\\|\\%#\\S\\{-1,}\"'}"
    call "{'char': \"'\", 'at': \"'\\S\\{-1,}\\%#\\|\\%#\\S\\{-1,}'\"}"
    call "{'char': '`', 'at': '`\\S\\{-1,}\\%#\\|\\%#\\S\\{-1,}`'}"

    -- NOTE: Parentesis, brackets and curly brackets
    call "{'char': '(', 'at': '\\%#\\S\\{-1,})'}"
    call "{'char': '[', 'at': '\\%#\\S\\{-1,}]'}"
    call "{'char': '{', 'at': '\\%#\\S\\{-1,}}'}"
  end,
}
