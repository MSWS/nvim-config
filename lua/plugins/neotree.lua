local function open_all_subnodes(state)
  local node = state.tree:get_node()
  local filesystem_commands = require("neo-tree.sources.filesystem.commands")
  filesystem_commands.expand_all_nodes(state, node)
end

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<S-e>', ':Neotree toggle right<CR>', {})
    require("neo-tree").setup({
      window = {
        position = "right",
        mappings = {
          ["O"] = open_all_subnodes,
        },
      },
    })
  end
}
