---------------------
---- KEYBINDINGS ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Binds/
-- See https://wiki.hypr.land/Configuring/Basics/Dispatchers/

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Core Execution & Window Management
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(TERMINAL))
hl.bind(mainMod .. " + SHIFT + RETURN", hl.dsp.exec_cmd("[float] " .. TERMINAL .. " -o background_opacity=0.75"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FILE_MANAGER))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("pkill " .. MENU .. " || " .. MENU_SHOW))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(WEB_BROWSER))
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exit())
hl.bind(mainMod .. " + C", hl.dsp.window.center())
hl.bind(mainMod .. " + W", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + V", hl.dsp.layout("togglesplit"))

-- Text editors
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(NOTEPAD))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd("[float] " .. NOTEPAD))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("kitty -d ~/Documents/Notes/ nvim note_$(date +\"%Y-%m-%d_%H:%M:%S\")"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("[float] kitty -d ~/Documents/Notes/ nvim note_$(date +\"%Y-%m-%d_%H:%M:%S\")"))

-- When a window enters floating mode, resize and center it
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.resize({ x = 1000, y = 500 }))
hl.bind(mainMod .. " + F", hl.dsp.window.center())

-- Switch focus from current to previously focused window
hl.bind(mainMod .. " + TAB", hl.dsp.focus({ last = true }))

-- Cycle through active workspace's windows
hl.bind(mainMod .. " + SHIFT + TAB", hl.dsp.window.cycle_next())
hl.bind(mainMod .. " + SHIFT + TAB", hl.dsp.window.bring_to_top())

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

-- Move focus with mainMod + hjkl
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

-- Move window with mainMod + arrow keys
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))

-- Move window with mainMod + hjkl
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- Swap active workspaces
hl.bind(mainMod .. " + CONTROL + TAB", hl.dsp.workspace.swap_monitors({ monitor1 = "HDMI-A-1", monitor2 = "eDP-1" }))

-- Swap window with mainMod + hjkl
hl.bind(mainMod .. " + CONTROL + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + CONTROL + J", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. " + CONTROL + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + CONTROL + L", hl.dsp.window.swap({ direction = "right" }))

-- Swap window with mainMod + arrow keys
hl.bind(mainMod .. " + CONTROL + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + CONTROL + down", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. " + CONTROL + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + CONTROL + right", hl.dsp.window.swap({ direction = "right" }))

-- Resize using arrows
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })

-- Resize using hjkl
hl.bind(mainMod .. " + ALT + h", hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + k", hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + j", hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
hl.bind(mainMod .. " + ALT + l", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Special workspace
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("special"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:special" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging (bindm -> mouse = true)
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Multimedia keys for volume (bindel -> locked = true, repeating = true)
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

-- Multimedia keys for LCD brightness (bindel -> locked = true, repeating = true)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 10%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 10%-"), { locked = true, repeating = true })

hl.bind(
	mainMod .. " + F6",
	hl.dsp.exec_cmd("hyprctl hyprsunset gamma +10; notify-send 'gamma up'"),
	{ locked = true, repeating = true }
)
hl.bind(
	mainMod .. " + F5",
	hl.dsp.exec_cmd("hyprctl hyprsunset gamma -10; notify-send 'gamma down'"),
	{ locked = true, repeating = true }
)

-- Requires playerctl (bindl -> locked = true)
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- Screen Capture
hl.bind(mainMod .. " + Print", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind(mainMod .. " + SHIFT + Print", hl.dsp.exec_cmd("hyprshot -m region -o ~/Pictures/Screenshots/"))

-- Lock Screen
hl.bind(mainMod .. " + DELETE", hl.dsp.exec_cmd("hyprlock --immediate-render"))

-- On lid close (bindl -> locked = true)
hl.bind(
	"switch:on:Lid Switch",
	hl.dsp.exec_cmd([[
hyprlock --immediate-render;
pkill hypridle;
hyprctl eval hl.monitor({ output = "eDP-1", disabled = true })
]]),
	{ locked = true }
)

-- On lid open (bindl -> locked = true)
hl.bind(
	"switch:off:Lid Switch",
	hl.dsp.exec_cmd([[
  hypridle
  hyprctl reload
  ]]),
	{ locked = true }
)

-- Desktop toggles
hl.bind(mainMod .. " + F11", hl.dsp.exec_cmd("pkill " .. STATUS_BAR .. " || " .. STATUS_BAR))
hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd("pkill " .. WALLPAPER_MANAGER .. " || " .. WALLPAPER_MANAGER))

-- Toggle eDP-1 monitor (bindl -> locked = true)
hl.bind(mainMod .. " + SHIFT + DELETE", hl.dsp.exec_cmd(TOGGLE_eDP1), { locked = true })

-- Useful for ThinkPad layout keyboard
hl.bind("Print", hl.dsp.exec_cmd("wtype -k Menu"))
