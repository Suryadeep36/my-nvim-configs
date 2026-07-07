return {
  "Saghen/blink.cmp",
  version = "*",

  opts = {
    keymap = {
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      -- Accept suggestion
      ["<CR>"] = { "accept", "fallback" },

      -- Open completion manually
      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },

      -- Close menu
      ["<Esc>"] = { "hide", "fallback" },

      -- Scroll documentation
      ["<C-d>"] = { "scroll_documentation_down", "fallback" },
      ["<C-u>"] = { "scroll_documentation_up", "fallback" },
    }
  },
}
