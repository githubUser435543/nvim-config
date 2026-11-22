return {
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",

    config = function()
      local ls = require("luasnip")

      ls.setup({
        update_events = { "TextChanged", "TextChangedI" },
        enable_autosnippets = true,
        --store_selection_keys = "<Tab>",
      })

      local snippet_path = vim.fn.stdpath("config") .. "/lua/luasnip/"
      require("luasnip.loaders.from_lua").lazy_load({
        paths = { snippet_path },
      })

      vim.keymap.set("i", "<C-k>", function()
        ls.expand()
      end, { silent = true, desc = "Expand snippet" })

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        ls.jump(1)
      end, { silent = true, desc = "Next snippet" })

      vim.keymap.set({ "i", "s" }, "<C-L>", function()
        ls.jump(-1)
      end, { silent = true, desc = "Previous snippet" })
    end,
  },
}
