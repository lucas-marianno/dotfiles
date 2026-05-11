--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

-------------------
-- GNOME APPS
-------------------

hl.window_rule({
	name = "calculator",
	match = { title = "Calculator" },

	float = true,
	center = true,
	size = { "monitor_w*0.3", "monitor_h*0.8" },
})

hl.window_rule({
	name = "calendar",
	match = { title = "Calendar" },

	float = true,
	move = { "monitor_w*0.7", "monitor_h*0.3" },
	size = { "monitor_w*0.2", "monitor_h*0.5" },
})

-------------------
-- WHATSAPP WEB
-------------------

hl.window_rule({
	name = "whatsapp-web",
	match = { title = WPP_TITLE },

	workspace = "special:magic",
	size = { "monitor_w*0.8", "monitor_h*0.8" },
})

-------------------
-- WEB BROWSER
-------------------

hl.window_rule({
	name = "browser-workspace",
	match = { class = WEB_BROWSER_CLASS },

	workspace = "2",
})

hl.window_rule({
	name = "chromium-floating",
	match = { class = "chromium" },

	float = true,
	center = true,
	size = { "monitor_w*0.5", "monitor_h*0.8" },
})

-------------------
-- DOWNLOAD POPUPS
-------------------

hl.window_rule({
	name = "browser-download-popup",
	match = {
		title = "^.*\\swants\\sto\\s(open|save)$",
	},

	float = true,
	center = true,
	size = { "monitor_w*0.8", "monitor_h*0.8" },
})

hl.window_rule({
	name = "untitled-popup",
	match = {
		title = "(?i)^untitled\\s.*$",
	},

	float = true,
	center = true,
	size = { "monitor_w*0.4", "monitor_h*0.8" },
})

-------------------
-- FILE MANAGER
-------------------

hl.window_rule({
	name = "file-manager",
	match = { class = FILE_MANAGER },

	float = true,
	center = true,
	size = { "monitor_w*0.8", "monitor_h*0.8" },
})

-------------------
-- TERMINAL
-------------------

hl.window_rule({
	name = "terminal",
	match = { class = TERMINAL },

	center = true,
	size = { "monitor_w*0.8", "monitor_h*0.8" },
})

-------------------
-- BLUETOOTH MANAGER
-------------------

hl.window_rule({
	name = "bluetooth-manager",
	match = { class = BT_MANAGER },

	float = true,
	center = true,
	size = { "monitor_w*0.5", "monitor_h*0.8" },
})

-------------------
-- CONNECTION EDITOR
-------------------

hl.window_rule({
	name = "connection-editor",
	match = { class = CONNECTION_EDITOR },

	float = true,
	center = true,
	size = { "monitor_w*0.5", "monitor_h*0.8" },
})

-------------------
-- AUDIO MANAGER
-------------------

hl.window_rule({
	name = "audio-manager",
	match = { class = AUDIO_MANAGER },

	float = true,
	center = true,
	size = { "monitor_w*0.5", "monitor_h*0.8" },
})

-------------------
-- SMART GAPS
-------------------
hl.workspace_rule({ workspace = "w[tv1]s[false]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]s[false]", gaps_out = 0, gaps_in = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, rounding = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, border_size = 0 })
hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, rounding = 0 })

-------------------
-- SUPPRESS MAXIMIZE
-------------------

hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})

-------------------
-- XWAYLAND DRAG FIX
-------------------

hl.window_rule({
	name = "fix-xwayland-drags",

	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})
