return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic'.setup {
            reduced_blue = false,
            transparent_bg = true
        }
        require 'nordic'.load()
    end
}
