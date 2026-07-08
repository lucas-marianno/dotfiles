GAPS_ENABLED = true
SMART_GAPS_ENABLED = true

local gaps_in <const> = 5
local gaps_out <const> = { top = 10, left = 10, right = 10, bottom = 10 }
local gaps_in_special <const> = 15
local gaps_out_special <const> = 40

local border_size <const> = 2
local rounding <const> = 5

function EnableGaps(boolean)
	if type(boolean) ~= "boolean" then
		boolean = true
	end

	GAPS_ENABLED = boolean

	if GAPS_ENABLED then
		hl.config({
			general = { gaps_in = gaps_in, gaps_out = gaps_out, border_size = border_size },
			decoration = { rounding = rounding },
		})

		hl.workspace_rule({ workspace = "special:S", gaps_out = gaps_out_special, gaps_in = gaps_in_special })
	else
		hl.config({
			general = { gaps_in = 0, gaps_out = 0, border_size = 0 },
			decoration = { rounding = 0 },
		})
		hl.workspace_rule({ workspace = "special:S", gaps_out = 10, gaps_in = 0 })

		EnableSmartGaps(true)
	end

	hl.exec_cmd("notify-send 'Gaps " .. (GAPS_ENABLED and "enabled" or "disabled") .. "'")
end

function EnableSmartGaps(boolean)
	if type(boolean) ~= "boolean" then
		boolean = true
	end

	SMART_GAPS_ENABLED = boolean

	if SMART_GAPS_ENABLED or not GAPS_ENABLED then
		hl.workspace_rule({ workspace = "w[tv1]s[false]", gaps_out = 0, gaps_in = 0 })
		hl.workspace_rule({ workspace = "f[1]s[false]", gaps_out = 0, gaps_in = 0 })
		hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, border_size = 0 })
		hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, rounding = 0 })
		hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, border_size = 0 })
		hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, rounding = 0 })

		hl.exec_cmd("notify-send 'Smart gaps enabled'")
	else
		hl.workspace_rule({ workspace = "w[tv1]s[false]", gaps_out = gaps_out, gaps_in = gaps_in })
		hl.workspace_rule({ workspace = "f[1]s[false]", gaps_out = gaps_out, gaps_in = gaps_in })
		hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, border_size = border_size })
		hl.window_rule({ match = { float = false, workspace = "w[tv1]s[false]" }, rounding = rounding })
		hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, border_size = border_size })
		hl.window_rule({ match = { float = false, workspace = "f[1]s[false]" }, rounding = rounding })

		hl.exec_cmd("notify-send 'Smart gaps disabled'")
	end
end
