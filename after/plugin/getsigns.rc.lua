local status, gitsigns = pcall(require, 'getsigns')
if (not status) then return end

gitsigns.setup {}
