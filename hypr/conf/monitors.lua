------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/

-- To list all available monitors (active and inactive):
-- `hyprctl monitors all`

EDP1_ENABLED = true

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "auto-left",
	scale = "1",
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "1920x1080@60",
	position = "auto-right",
	scale = "1",
})

function Enable_eDP1(boolean)
	if type(boolean) ~= "boolean" then
		boolean = true
	end

	EDP1_ENABLED = boolean

	hl.monitor({ output = "eDP-1", disabled = not EDP1_ENABLED })
	hl.exec_cmd("notify-send 'Monitor eDP-1 " .. (EDP1_ENABLED and "enabled" or "disabled") .. "'")
end
