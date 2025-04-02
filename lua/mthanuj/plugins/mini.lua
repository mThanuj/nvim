return {
  {
    'echasnovski/mini.surround',
    version = '*',
    keys = {
      { 'gsa', desc = 'Add surrounding' },
      { 'gsd', desc = 'Delete surrounding' },
      { 'gsf', desc = 'Find surrounding' },
      { 'gsF', desc = 'Find surrounding (left)' },
      { 'gsh', desc = 'Highlight surrounding' },
      { 'gsr', desc = 'Replace surrounding' },
      { 'gsn', desc = 'Update n lines' },
    },
    opts = {
      mappings = {
        add = 'gsa',
        delete = 'gsd',
        find = 'gsf',
        find_left = 'gsF',
        highlight = 'gsh',
        replace = 'gsr',
        update_n_lines = 'gsn',

        suffix_last = '',
        suffix_next = '',
      },
    },
  },
  {
    'echasnovski/mini.animate',
    version = '*',
  },
}
