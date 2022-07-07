local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
    ["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<CR>", "Find File"},
        t = { "<cmd>Telescope live_grep<CR>", "Find text"},
    },
    t = {
        name = "Terminal",
        n = { "<cmd>ToggleTerm direction=float<CR>", "Float" },
    },
    n = {
        name = "Navigating",
        c = { "<cmd>BufferClose<CR>", "Close Tab" },
        l = { "<cmd>BufferLineCycleNext<CR>", "Next Tab" },
        h = { "<cmd>BufferLineCyclePrev<CR>", "Previous Tab" },
    },
    z = {
        name = "Competitest",
        a = { "<cmd>CompetiTestAdd<CR>", "Add Tests" },
        e = { "<cmd>CompetiTestEdit<CR>", "Edit Tests" },
        d = { "<cmd>CompetiTestReceive<CR>", "Download Tests" },
        r = { "<cmd>CompetiTestRun<CR>", "Run Tests" },
    }
}

which_key.setup()
which_key.register(mappings, opts)
