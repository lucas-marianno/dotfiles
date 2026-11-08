--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- https://wiki.hypr.land/Configuring/core/rules/Window-Rules/
-- https://wiki.hypr.land/configuring/core/rules/workspace-rules/
-- Example window rules that are useful

--- Hardcoded values so that odd workspaces are on the left, and even on the right
hl.workspace_rule({ workspace = "1", monitor = LEFT_MONITOR })
hl.workspace_rule({ workspace = "3", monitor = LEFT_MONITOR })
hl.workspace_rule({ workspace = "5", monitor = LEFT_MONITOR })
hl.workspace_rule({ workspace = "7", monitor = LEFT_MONITOR })
hl.workspace_rule({ workspace = "9", monitor = LEFT_MONITOR })
hl.workspace_rule({ workspace = "2", monitor = RIGHT_MONITOR })
hl.workspace_rule({ workspace = "4", monitor = RIGHT_MONITOR })
hl.workspace_rule({ workspace = "6", monitor = RIGHT_MONITOR })
hl.workspace_rule({ workspace = "8", monitor = RIGHT_MONITOR })
hl.workspace_rule({ workspace = "10", monitor = RIGHT_MONITOR })

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

-------------------
-- WHATSAPP WEB
-------------------

hl.window_rule({
	name = "whatsapp-web",
	match = { title = WPP_TITLE },

	workspace = "special:S",
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
