return {
  '3rd/image.nvim',
  dependencies = {
    {
      'vhyrro/luarocks.nvim',
      opts = { rocks = { 'magick' } },
    },
  },
  ft = { 'markdown' },
  config = function()
    require('image').setup {
      integrations = {
        markdown = {
          only_render_image_at_cursor = true,
          filetypes = { 'markdown' },
        },
      },
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      window_overlap_clear_enabled = false,
      window_overlap_clear_ft_ignore = { 'cmp_menu', 'cmp_docs', '' },
      editor_only_render_when_focused = false,
      tmux_show_only_in_active_window = true,
    }
  end,
}
