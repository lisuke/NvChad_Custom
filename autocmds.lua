
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.keymap.set("n", "<Esc>", '<cmd> cclose <CR> <cmd> noh <CR>')
  end,
})

augroup("LspAttach_inlayhints", {})
autocmd("LspAttach", {
  group = "LspAttach_inlayhints",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    require("lsp-inlayhints").on_attach(client, bufnr)
  end,
})

