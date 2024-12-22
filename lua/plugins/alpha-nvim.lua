return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.startify')

        -- dashboard.section.header.val = {
        --  [[ ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
        --  [[ ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
        --  [[ ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
        --  [[ ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
        --  [[ ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
        --  [[ ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
        -- } 

        -- Create custom headers from https://texteditor.com/multiline-text-art/
        -- This font is the Dark with Shadow
        dashboard.section.header.val = {
            [[██╗   ██╗██╗███╗   ███╗]],
            [[╚██╗ ██╔╝██║████╗ ████║]],
            [[ ╚████╔╝ ██║██╔████╔██║]],
            [[  ╚██╔╝  ██║██║╚██╔╝██║]],
            [[   ██║   ██║██║ ╚═╝ ██║]],
            [[   ╚═╝   ╚═╝╚═╝     ╚═╝]],
        }
        alpha.setup(dashboard.opts)
    end
};
