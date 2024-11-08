return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- dashboard.section.header.val = {
    --     "_____________________________¶¶___________________",
    --     "__________________________¶¶¶¶¶___________________",
    --     "_________________________¶¶¶¶¶¶¶__________________",
    --     "_______________________¶¶¶¶¶¶¶¶¶__________________",
    --     "_______________________¶¶¶¶¶¶¶¶¶¶_________________",
    --     "________________________¶¶¶¶¶¶¶¶¶¶________________",
    --     "________________________¶¶¶¶¶¶¶¶¶¶________________",
    --     "_____________________¶___¶¶¶¶¶¶¶¶¶¶_______________",
    --     "___________________¶¶¶___¶¶¶¶¶¶¶¶¶¶_______________",
    --     "__________________¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶______________",
    --     "________________¶¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶¶¶______________",
    --     "______________¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶_____________",
    --     "______________¶¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶____________",
    --     "_______________¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶____________",
    --     "________________¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___________",
    --     "____________¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___________",
    --     "___________¶¶¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶__________",
    --     "_________¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶__________",
    --     "_______¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶_________",
    --     "______¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶¶¶_________",
    --     "______¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶________",
    --     "_______¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶___¶¶¶¶¶¶¶¶¶¶_______",
    --     "__________________________________________________",
    --     "_________________¶¶_¶¶________¶¶__________________",
    --     "_________________¶¶_¶¶________¶¶__________________",
    --     "_________________¶¶___________¶¶__________________",
    --     "___¶¶¶¶¶¶___¶¶¶¶¶¶¶_¶¶___¶¶¶¶¶¶¶___¶¶¶¶¶¶¶__¶¶¶¶__",
    --     "__¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶_¶¶__¶¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶_¶¶¶¶¶¶_",
    --     "_¶¶¶__¶¶¶__¶¶___¶¶¶_¶¶__¶¶___¶¶¶_¶¶¶__¶¶¶¶_¶¶___¶¶",
    --     "¶¶¶____¶¶_¶¶_____¶¶_¶¶_¶¶_____¶¶_¶¶____¶¶¶_¶¶¶¶___",
    --     "¶¶_____¶¶_¶¶_____¶¶_¶¶_¶¶_____¶¶_¶¶_____¶¶_¶¶¶¶¶¶_",
    --     "¶¶¶____¶¶_¶¶_____¶¶_¶¶_¶¶_____¶¶_¶¶____¶¶¶____¶¶¶¶",
    --     "_¶¶¶__¶¶¶__¶¶___¶¶¶_¶¶__¶¶___¶¶¶_¶¶¶__¶¶¶¶_¶¶___¶¶",
    --     "_¶¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶_¶¶__¶¶¶¶¶¶¶¶__¶¶¶¶¶¶¶¶_¶¶¶¶¶¶¶",
    --     "__¶¶¶¶_¶¶____¶¶¶¶¶¶_¶¶___¶¶¶¶_¶¶___¶¶¶¶_¶¶__¶¶¶¶¶_",
    -- }

    --     dashboard.section.header.val = {
    -- "::::'######:::'##::::::::::'###::::'##::::'##::'######:::'#######::'##::::'##::::'###:::::::",
    -- ":::'##... ##:: ##:::::::::'## ##::: ##:::: ##:'##... ##:'##.... ##: ###::'###:::'## ##::::::",
    -- "::: ##:::..::: ##::::::::'##:. ##:: ##:::: ##: ##:::..:: ##:::: ##: ####'####::'##:. ##:::::",
    -- "::: ##::'####: ##:::::::'##:::. ##: ##:::: ##: ##::::::: ##:::: ##: ## ### ##:'##:::. ##::::",
    -- "::: ##::: ##:: ##::::::: #########: ##:::: ##: ##::::::: ##:::: ##: ##. #: ##: #########::::",
    -- "::: ##::: ##:: ##::::::: ##.... ##: ##:::: ##: ##::: ##: ##:::: ##: ##:.:: ##: ##.... ##::::",
    -- ":::. ######::: ########: ##:::: ##:. #######::. ######::. #######:: ##:::: ##: ##:::: ##::::",
    -- "::::......::::........::..:::::..:::.......::::......::::.......:::..:::::..::..:::::..:::::",
    --         }
    dashboard.section.header.val = {
      '                                                                                                              ',
      '                                                                                                              ',
      '       .__           .__       .__           .__           .__           .__           .__           .__      ',
      '      /\\  \\         /\\__\\     /\\  \\         /\\__\\         /\\  \\         /\\  \\         /\\__\\         /\\  \\     ',
      '     /::\\  \\       /:/  /    /::\\  \\       /:/  /        /::\\  \\       /::\\  \\       /::|  |       /::\\  \\    ',
      '    /:/\\:\\  \\     /:/  /    /:/\\:\\  \\     /:/  /        /:/\\:\\  \\     /:/\\:\\  \\     /:|:|  |      /:/\\:\\  \\   ',
      '   /:/  \\:\\  \\   /:/  /    /::\\~\\:\\  \\   /:/  /  ___   /:/  \\:\\  \\   /:/  \\:\\  \\   /:/|:|__|__   /::\\~\\:\\  \\  ',
      '  /:/__/_\\:\\__\\ /:/__/    /:/\\:\\ \\:\\__\\ /:/__/  /\\__\\ /:/__/ \\:\\__\\ /:/__/ \\:\\__\\ /:/ |::::\\__\\ /:/\\:\\ \\:\\__\\ ',
      '  \\:\\  /\\ \\/__/ \\:\\  \\    \\/__\\:\\/:/  / \\:\\  \\ /:/  / \\:\\  \\  \\/__/ \\:\\  \\ /:/  / \\/__/~~/:/  / \\/__\\:\\/:/  / ',
      '   \\:\\ \\:\\__\\    \\:\\  \\        \\::/  /   \\:\\  /:/  /   \\:\\  \\        \\:\\  /:/  /        /:/  /       \\::/  /  ',
      '    \\:\\/:/  /     \\:\\  \\       /:/  /     \\:\\/:/  /     \\:\\  \\        \\:\\/:/  /        /:/  /        /:/  /   ',
      '     \\::/  /       \\:\\__\\     /:/  /       \\::/  /       \\:\\__\\        \\::/  /        /:/  /        /:/  /    ',
      '      \\/__/         \\/__/     \\/__/         \\/__/         \\/__/         \\/__/         \\/__/         \\/__/     ',
      '                                                                                                              ',
      '                                                                                                              ',
      '                                                                                                              ',
    }
    -- dashboard.section.header.val = {
    --     "  ▄████  ██▓    ▄▄▄      █    ██  ▄████▄  ▒█████   ███▄ ▄███▓ ▄▄▄      ",
    --     " ██▒ ▀█▒▓██▒   ▒████▄    ██  ▓██▒▒██▀ ▀█ ▒██▒  ██▒▓██▒▀█▀ ██▒▒████▄    ",
    --     "▒██░▄▄▄░▒██░   ▒██  ▀█▄ ▓██  ▒██░▒▓█    ▄▒██░  ██▒▓██    ▓██░▒██  ▀█▄  ",
    --     "░▓█  ██▓▒██░   ░██▄▄▄▄██▓▓█  ░██░▒▓▓▄ ▄██▒██   ██░▒██    ▒██ ░██▄▄▄▄██ ",
    --     "░▒▓███▀▒░██████▒▓█   ▓██▒▒█████▓ ▒ ▓███▀ ░ ████▓▒░▒██▒   ░██▒ ▓█   ▓██▒",
    --     " ░▒   ▒ ░ ▒░▓  ░▒▒   ▓▒█░▒▓▒ ▒ ▒ ░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░   ░  ░ ▒▒   ▓▒█░",
    --     "  ░   ░ ░ ░ ▒  ░ ▒   ▒▒ ░░▒░ ░ ░   ░  ▒    ░ ▒ ▒░ ░  ░      ░  ▒   ▒▒ ░",
    --     "░ ░   ░   ░ ░    ░   ▒   ░░░ ░ ░ ░       ░ ░ ░ ▒  ░      ░     ░   ▒   ",
    --     "      ░     ░  ░     ░  ░  ░     ░ ░         ░ ░         ░         ░  ░",
    --     "                                 ░                                     ",
    -- }
    --
    -- dashboard.section.header.val = {
    --     "    ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄   ",
    --     "   █       █   █   █      █  █ █  █       █       █  █▄█  █      █  ",
    --     "   █   ▄▄▄▄█   █   █  ▄   █  █ █  █       █   ▄   █       █  ▄   █  ",
    --     "   █  █  ▄▄█   █   █ █▄█  █  █▄█  █     ▄▄█  █ █  █       █ █▄█  █  ",
    --     "   █  █ █  █   █▄▄▄█      █       █    █  █  █▄█  █       █      █  ",
    --     "   █  █▄▄█ █       █  ▄   █       █    █▄▄█       █ ██▄██ █  ▄   █  ",
    --     "   █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█ █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄█   █▄█▄█ █▄▄█  ",
    -- }

    dashboard.section.buttons.val = {
      -- dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
      -- dashboard.button('f', '  > Find file', ':Telescope find_files<CR>'),
      -- dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
      -- dashboard.button('t', '󰈭  > Find Word', ':Telescope live_grep'),
      -- --dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
      -- dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
    }
    alpha.setup(dashboard.opts)
  end,
}
