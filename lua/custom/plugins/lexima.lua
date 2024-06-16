-- WARN: Updating lexima rules
local setup_keybinds = function ()
  -- NOTE: Quotes '' and ""

  -- NOTE: Parentesis, brackets and curly brackets
  end

return {
  'cohama/lexima.vim',
  brach = 'master',

  config = function ()
    setup_keybinds()
  end,
  setup = function ()
    setup_keybinds()
  end
}
