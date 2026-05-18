------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- To list all available monitors (active and inactive):
-- `hyprctl monitors all`

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "auto-left",
	scale = "1.2",
})

hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@60",
	position = "auto-right",
	scale = "1",
})
