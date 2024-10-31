if vim.g.neovide then
  vim.g.neovide_transparency = 0.7
  vim.g.transparency = 0.7
  vim.g.neovide_window_blurred = true

  vim.g.neovide_scale_factor = 1.0

  vim.g.gui_font_default_size = 14
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.gui_font_face = 'JetBrainsMono Nerd Font'

  vim.opt.linespace = 5

  vim.g.neovide_input_macos_option_key_is_meta = 'only_left'

  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_scroll_animation_far_lines = 0
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_trail_size = 0

  vim.o.pumblend = 0
  vim.o.winblend = 0
end
