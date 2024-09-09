return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    color_overrides = {
      -- changing mocha theme to be a pinky theme
      frappe = {
        text = "#F4CDE9",
        subtext1 = "#DEBAD4",
        subtext0 = "#C8A6BE",
        overlay2 = "#B293A8",
        overlay1 = "#9C7F92",
        overlay0 = "#866C7D",
        surface2 = "#705867",
        surface1 = "#5A4551",
        surface0 = "#44313B",
        base = "#352939",
        mantle = "#211924",
        crust = "#1a1016",
      }
    },
    flavour = "macchiato",
    term_colors = true,
    dim_inactive = {
      enabled = false,   -- dims the background color of inactive window
      shade = "dark",
      percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_bold = false,
    no_italic = false,
    no_underline = false,
    integrations = {
      cmp = true,
      gitsigns = true,
      treesitter = true,
      harpoon = true,
      telescope = true,
      mason = true,
      noice = true,
      notify = true,
      which_key = true,
      fidget = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
