return {
  "m4xshen/autoclose.nvim",
  opts = {
    keys = {
      ["'"] = { close = false },
      ["\""] = { close = false },
      ["`"] = { close = false },
    },
    options = {
      pair_spaces = true,
      disable_when_touch = true,
      touch_regex = "[%w(%[{]",
    }
  }
}
