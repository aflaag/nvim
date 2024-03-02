require('Comment').setup({
    toggler = {
        line = 'sc',
    },
    opleader = {
        line = 'ssc',
        block = 'fc',
    },
})

local ft = require('Comment.ft')

ft
    .set('sml', {'(*%s*)', '(*%s*)'})
