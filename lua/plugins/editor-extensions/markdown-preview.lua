local markdown_preview = {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle",
        "MarkdownPreview",
        "MarkdownPreviewStop"
    },
    ft = { "markdown" },
    build = function()
        vim.fn["mkdp#util#install"]()
    end,
}

return markdown_preview

