local colorscheme = "monokai"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  print("colorscheme " .. colorscheme .. " not found! Do the needful by installing the right plugin or choose a different colorscheme, dude!" .. " On the off chances you decided to ignore this message and press Enter, then I'll use the default theme, which is something I don't know but still a good one with pink and stuff. So yeah, Enjoy")
  return
end
