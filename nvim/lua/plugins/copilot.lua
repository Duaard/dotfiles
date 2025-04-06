return {
  "hrsh7th/nvim-cmp",
  event = { "InsertEnter", "CmdlineEnter" }, -- Load on Insert mode or command-line mode
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept suggestion with Tab
      ["<CR>"] = cmp.mapping(function(fallback)
        fallback() -- Disable <CR> for accepting suggestions
      end, { "i", "s" }),
    })
  end,
}
