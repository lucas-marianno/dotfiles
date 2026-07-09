-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)

hl.on("hyprland.start", function()
	hl.exec_cmd("/usr/lib/pam_kwallet_init")
	hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
	hl.exec_cmd("/usr/bin/xdg-desktop-portal-hyprland")

	-- Basic functionality
	hl.exec_cmd(NOTIFICATION_DAEMON)
	hl.exec_cmd(AUTO_MOUNT)
	hl.exec_cmd("" .. NETWORK_MANAGER .. "--indicator")

	-- Style
	hl.exec_cmd(STATUS_BAR)
	hl.exec_cmd(WALLPAPER_MANAGER)
	-- hl.exec_cmd( gsettings set org.gnome.desktop.interface color-scheme "prefer-dark")

	-- Authentication
	hl.exec_cmd("systemctl --user import-environment PATH")
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")

	hl.exec_cmd("source ../kde-session-env.sh")

	--  Security
	hl.exec_cmd(IDDLE_MNGR)

	-- gamma
	hl.exec_cmd("hyprsunset")

	-- custom scripts
	EnableGaps(true)
	EnableSmartGaps(true)
end)

hl.on("config.reloaded", function()
	EnableGaps(GAPS_ENABLED)
	EnableSmartGaps(SMART_GAPS_ENABLED)
end)
