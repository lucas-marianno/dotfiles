------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- To list all available monitors (active and inactive):
-- `hyprctl monitors all`

LEFT_MONITOR_ENABLED = true

LEFT_MONITOR = "DP-1"
RIGHT_MONITOR = "HDMI-A-1"

hl.monitor({
	output = LEFT_MONITOR,
	mode = "1920x1080@165",
	position = "auto-left",
	scale = "1",
	supports_hdr = -1,
})
hl.monitor({
	output = RIGHT_MONITOR,
	mode = "1920x1080@60",
	position = "auto-right",
	scale = "1",
})

function EnableLeftMonitor(boolean)
	if type(boolean) ~= "boolean" then
		boolean = true
	end

	LEFT_MONITOR_ENABLED = boolean

	hl.monitor({ output = LEFT_MONITOR, disabled = not LEFT_MONITOR_ENABLED })
	hl.exec_cmd("notify-send 'Monitor " .. LEFT_MONITOR .."'" .. (LEFT_MONITOR_ENABLED and "enabled" or "disabled") .. "'")
end
