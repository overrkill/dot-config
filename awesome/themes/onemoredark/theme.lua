--[[--
File              : theme.lua
Author            : Abhishek Kale  <https://github.com/overrkill>
Date              : 24.04.2021
Last Modified Date: 24.04.2021
Last Modified By  : Abhishek Kale  <https://github.com/overrkill>
--]]--
--[[

     Author  -  
                                  
	 _        _  ,_   ,_  |)  o |\ |\ 
	/ \_|  |_|/ /  | /  | |/) | |/ |/ 
	\_/  \/  |_/   |/   |/| \/|/|_/|_/
					  
     github - 

     https://github.com/overrkill/dotfiles/awesome
--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

local math, string, os = math, string, os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}
theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/gruvyline"
theme.wallpaper                                 = "~/Downloads/nord_solar_map.jpg"
theme.font                                      = "JetBrains Mono Regular 10"--"Hack Nerd Font Regular 10"
theme.taglist_font                              = "JetBrains Mono Regular 10"
theme.fg_normal                                 = "#abb2bf"
theme.fg_focus                                  = "#abb2bf"
theme.fg_urgent                                 = "#abb2bf"
theme.bg_normal                                 = "#282c34"
theme.bg_focus                                  = "#282c34"
theme.bg_urgent                                 = "#282c34"
theme.taglist_fg_focus                          = "#61afef"
theme.taglist_bg_focus                         = "#302e36"
theme.taglist_bg_occupied                         = theme.bg_normal
theme.taglist_fg_occupied                         = "#c678dd"
theme.taglist_fg_empty                         = "#abb2bf" --"#61afef"
theme.taglist_bg_empty                         = theme.bg_normal
theme.tasklist_bg_focus                         = "#302e36"
theme.tasklist_fg_focus                         = "#c678dd"
theme.bg_systray                                = "#302e36"
theme.fg_systray                                = "#abb2bf"
theme.border_width                              = dpi(3)
theme.border_normal                             = "#abb2bf"
theme.border_focus                              = "#c678dd"
theme.border_marked                             = "#CC9393"
theme.titlebar_bg_focus                         = "#3F3F3F"
theme.titlebar_bg_normal                        = "#3F3F3F"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(25)
theme.menu_width                                = dpi(260)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.awesome_icon                              = theme.dir .. "/icons/awesome.png"
--theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
--theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note.png"
theme.widget_music_pause                        = theme.dir .. "/icons/pause.png"
theme.widget_music_stop                         = theme.dir .. "/icons/stop.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 2

-- Naughty config
theme.notification_font = "JetBrains Mono Regular 11"
theme.notification_bg = "#222"
theme.notification_fg = "#c678dd"
theme.notification_opacity = 0.9
theme.notification_shape = gears.shape.rounded_rect
theme.notification_margin = dpi(10)
theme.notification_icon_size = dpi(10)
theme.notification_max_height = dpi(100)
theme.notification_max_width = dpi(280)
--mstab config
-- mstab
theme.mstab_bar_ontop = false               -- whether you want to allow the bar to be ontop of clients
theme.mstab_dont_resize_slaves = false      -- whether the tabbed stack windows should be smaller than the
                                            -- currently focused stack window (set it to true if you use
                                            -- transparent terminals. False if you use shadows on solid ones
theme.mstab_bar_padding = "default"         -- how much padding there should be between clients and your tabbar
                                            -- by default it will adjust based on your useless gaps. 
                                            -- If you want a custom value. Set it to the number of pixels (int)
theme.mstab_border_radius = 5               -- border radius of the tabbar
theme.mstab_bar_height = 40                 -- height of the tabbar
theme.mstab_tabbar_position = "top"         -- position of the tabbar (mstab currently does not support left,right)
theme.mstab_tabbar_style = "modern"        -- style of the tabbar ("default", "boxes" or "modern")
                                            -- defaults to the tabbar_style so only change if you want a
                                            -- different style for mstab and tabbed
local markup = lain.util.markup
local separators = lain.util.separators


-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +'%T'", 1,
    function(widget, stdout)
        widget:set_markup(" " .. markup.fontcolor(theme.font,"#302e36","#61afef",stdout))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "JetBrains Mono Medium 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal,
    }
})







-- ALSA volume
theme.volume = lain.widget.alsabar({
    --togglechannel = "IEC958,3",
    notification_preset = { font = theme.font, fg = theme.fg_normal },
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontcolor(theme.font,"#98c379","#282c34", " MEM " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})


-- Coretemp (lain, average)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})
--]]
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local empt = lain.widget.temp({
     settings = function()
     widget:set_markup("")
     end
   })


-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            widget:set_markup(markup.fontcolor(theme.font, "#e5c07b", "#282c34", " BAT " .. bat_now.perc.." "))
        else
            widget:set_markup(markup.fontcolor(theme.font, "#e5c07b", "#282c34" , " BAT ? "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- ALSA volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = lain.widget.alsa({
    settings = function()
        widget:set_markup(markup.fontcolor(theme.font, "#e06c75", "#282c34", " VOL ".. volume_now.level))
    end
})

-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#000000", " " .. net_now.received .. " ↓↑ " .. net_now.sent .. " "))
    end
})

-- Separators
local arrow = separators.arrow_left
local arrow_right = separators.arrow_right

function theme.powerline_rl(cr, width, height)
    local arrow_depth, offset = height/2, 0

    -- Avoid going out of the (potential) clip area
    if arrow_depth < 0 then
        width  =  width + 2*arrow_depth
        offset = -arrow_depth
    end

    cr:move_to(offset + arrow_depth         , 0        )
    cr:line_to(offset + width               , 0        )
    cr:line_to(offset + width - arrow_depth , height/2 )
    cr:line_to(offset + width               , height   )
    cr:line_to(offset + arrow_depth         , height   )
    cr:line_to(offset                       , height/2 )

    cr:close_path()
end

local function pl(widget, bgcolor, padding)
    return wibox.container.background(wibox.container.margin(widget, dpi(16), dpi(16)), bgcolor, theme.powerline_rl)
end

function theme.at_screen_connect(s)
    -- Quake application
   -- s.quake = lain.util.quake({ app = awful.util.terminal })
   s.quake = lain.util.quake({ app = "kitty", height = 0.40 , width=0.40 , horiz = "center", argname = "--name %s" })



    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- All tags open with layout 1
    awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({ }, 1, function () awful.layout.inc( 1) end),
                           awful.button({ }, 3, function () awful.layout.inc(-1) end),
                           awful.button({ }, 4, function () awful.layout.inc( 1) end),
                           awful.button({ }, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    --s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
   

    s.mytasklist = awful.widget.tasklist {
    screen   = s,
    filter   = awful.widget.tasklist.filter.currenttags,
    buttons  = awful.util.tasklist_buttons,
  --  style    = {
  --      shape  = gears.shape.rounded_rect,
  --  },
    }
    

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.flex.horizontal,
	spacing = 100,
        { -- Left widgets
            layout = wibox.layout.flex.horizontal,
            --spr,
            s.mytaglist,
            --s.mypromptbox,
          
        },
	{
	    
		s.mytasklist,
       -- wibox.container.margin(wibox.widget { empt.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)),
		layout = wibox.layout.align.horizontal,
		spacing=0,

	}, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            spacing = 0,
            wibox.container.margin(wibox.widget { theme.volume.widget, layout = wibox.layout.align.horizontal }, dpi(2), dpi(3)),
            wibox.container.margin(wibox.widget { mem.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)),
	    wibox.container.margin(wibox.widget { bat.widget, layout = wibox.layout.align.horizontal }, dpi(3), dpi(3)),
            wibox.container.background(wibox.container.margin(clock, dpi(4), dpi(4)),"#61afef",gears.shape.rounded_rect),
            wibox.widget.systray(),
            --]]
            
        },
    }
end

return theme
