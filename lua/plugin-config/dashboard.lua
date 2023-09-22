local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("dashboard not found")
  return
end

db.setup({
  theme = "hyper",
  config = {
    header = {
      [[]],
      [[]],
      [[]],
      [[]],
      [[██████╗ ██████╗ ███████╗ █████╗ ██████╗ ███╗   ███╗       ██╗██████╗ ███████╗]],
      [[██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗████╗ ████║      ███║╚════██╗╚════██║]],
      [[██████╔╝██████╔╝█████╗  ███████║██████╔╝██╔████╔██║█████╗╚██║ █████╔╝    ██╔╝]],
      [[██╔═══╝ ██╔═══╝ ██╔══╝  ██╔══██║██╔══██╗██║╚██╔╝██║╚════╝ ██║ ╚═══██╗   ██╔╝ ]],
      [[██║     ██║     ██║     ██║  ██║██║  ██║██║ ╚═╝ ██║       ██║██████╔╝   ██║  ]],
      [[╚═╝     ╚═╝     ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝       ╚═╝╚═════╝    ╚═╝  ]],
      [[]],
      [[]],
    },
    project = { enable = false, },
    mru = { limit = 13 },
    shortcut = {
      {
        icon = " ",
        desc = "Projects",
        action = "Telescope projects",
        key = "p",
      },
      {
        icon = "󰊳 ",
        desc = "Update",
        action = "Lazy update",
        key = "u"
      },
      {
        icon = "󰱽 ",
        desc = "Files",
        action = "Telescope find_files",
        key = "f",
      },
    },
    footer = {
      "",
      "时间是唯一致死的毒药"
    },
  },
})
