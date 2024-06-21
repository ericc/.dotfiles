local status, rp = pcall(require, 'rose-pine')
if (not status) then return end

rp.setup {
  variant = 'auto', -- auto, main, moon, or dawn
  dark_variant = 'main',
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,

  enable = {
    terminal = true,
    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    migrations = true,        -- Handle deprecated options automatically
  },

  styles = {
    bold = true,
    italic = true,
    transparency = false,
  },

  groups = {
    border = 'muted',
    link = 'iris',
    panel = 'surface',

    error = 'love',
    hint = 'iris',
    info = 'foam',
    note = 'pine',
    todo = 'rose',
    warn = 'gold',

    git_add = 'foam',
    git_change = 'rose',
    git_delete = 'love',
    git_dirty = 'rose',
    git_ignore = 'muted',
    git_merge = 'iris',
    git_rename = 'pine',
    git_stage = 'iris',
    git_text = 'rose',
    git_untracked = 'subtle',

    h1 = 'iris',
    h2 = 'foam',
    h3 = 'rose',
    h4 = 'gold',
    h5 = 'pine',
    h6 = 'foam',
  },

  -- Change specific vim highlight groups
  highlight_groups = {
    ColorColumn = { bg = 'rose' }
  }
}

-- set colorscheme after options
vim.cmd('colorscheme rose-pine')

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
