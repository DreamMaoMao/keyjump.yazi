-- stylua: ignore
local SPECIAL_KEYS = {
	"<Space>", "<Esc>"
}

-- stylua: ignore
local SINGLE_KEYS = {
	"p", "b", "e", "t", "a", "o", "i", "n", "s", "r", "h", "l", "d", "c",
	"u", "m", "f", "g", "w", "v", "k", "j", "x", "z", "y", "q"
}
-- stylua: ignore
local CURRENT_DOUBLE_KEYS = {
	"au", "ai", "ao", "ah", "aj", "ak", "al", "an", "su", "si", "so", "sh",
	"sj", "sk", "sl", "sn", "du", "di", "do", "dh", "dj", "dk", "dl", "dn",
	"fu", "fi", "fo", "fh", "fj", "fk", "fl", "fn", "gu", "gi", "go", "gh",
	"gj", "gk", "gl", "gn", "eu", "ei", "eo", "eh", "ej", "ek", "el", "en",
	"ru", "ri", "ro", "rh", "rj", "rk", "rl", "rn", "cu"
}

local PREVIEW_DOUBLE_KEYS = {
	"ci", "co", "ch", "cj", "ck", "cl", "cn", "wu", "wi", "wo", "wh", "wj", 
	"wk", "wl", "wn", "tu", "ti", "to", "th", "tj", "tk", "tl", "tn", "vu", 
	"vi", "vo", "vh", "vj", "vk", "vl", "vn", "xu", "xi", "xo", "xh", "xj", 
	"xk", "xl", "xn", "zu", "zi", "zo", "zh", "zj", "zk", "zl", "zn", "bu", 
	"bi", "bo", "bh", "bj", "bk", "bl"
}

local PARRENT_DOUBLE_KEYS = { 
	"bn", "qu", "qi", "qo", "qh", "qj", "qk", "ql", "qn", "ap", "ay", "am", 
	"fp", "fy", "fm", "ep", "ey", "em", "sp", "sy", "sm", "dp", "dy", "dm", 
	"gp", "gy", "gm", "rp", "ry", "rm", "cp", "cy", "cm", "wp", "wy", "wm", 
	"xp", "xy", "xm", "tp", "ty", "tm", "vp", "vy", "vm", "bp", "by", "bm", 
	"zp", "zy", "zm", "qp", "qy", "qm"
}

-- stylua: ignore
local SPECIAL_CANDS = {
	{ on = "<Space>" }, { on = "<Esc>" }
}

-- stylua: ignore
local SIGNAL_CANDS = {
	{ on = "p" }, { on = "b" }, { on = "e" }, { on = "t" }, { on = "a" },
	{ on = "o" }, { on = "i" }, { on = "n" }, { on = "s" }, { on = "r" },
	{ on = "h" }, { on = "l" }, { on = "d" }, { on = "c" }, { on = "u" },
	{ on = "m" }, { on = "f" }, { on = "g" }, { on = "w" }, { on = "v" },
	{ on = "k" }, { on = "j" }, { on = "x" }, { on = "z" }, { on = "y" },
	{ on = "q" },
}
-- stylua: ignore
local CURRENT_DOUBLE_CANDS = {
	{ on = { "a", "u" } }, { on = { "a", "i" } }, { on = { "a", "o" } },
	{ on = { "a", "h" } }, { on = { "a", "j" } }, { on = { "a", "k" } },
	{ on = { "a", "l" } }, { on = { "a", "n" } }, { on = { "s", "u" } },
	{ on = { "s", "i" } }, { on = { "s", "o" } }, { on = { "s", "h" } },
	{ on = { "s", "j" } }, { on = { "s", "k" } }, { on = { "s", "l" } },
	{ on = { "s", "n" } }, { on = { "d", "u" } }, { on = { "d", "i" } },
	{ on = { "d", "o" } }, { on = { "d", "h" } }, { on = { "d", "j" } },
	{ on = { "d", "k" } }, { on = { "d", "l" } }, { on = { "d", "n" } },
	{ on = { "f", "u" } }, { on = { "f", "i" } }, { on = { "f", "o" } },
	{ on = { "f", "h" } }, { on = { "f", "j" } }, { on = { "f", "k" } },
	{ on = { "f", "l" } }, { on = { "f", "n" } }, { on = { "g", "u" } },
	{ on = { "g", "i" } }, { on = { "g", "o" } }, { on = { "g", "h" } },
	{ on = { "g", "j" } }, { on = { "g", "k" } }, { on = { "g", "l" } },
	{ on = { "g", "n" } }, { on = { "e", "u" } }, { on = { "e", "i" } },
	{ on = { "e", "o" } }, { on = { "e", "h" } }, { on = { "e", "j" } },
	{ on = { "e", "k" } }, { on = { "e", "l" } }, { on = { "e", "n" } },
	{ on = { "r", "u" } }, { on = { "r", "i" } }, { on = { "r", "o" } },
	{ on = { "r", "h" } }, { on = { "r", "j" } }, { on = { "r", "k" } },
	{ on = { "r", "l" } }, { on = { "r", "n" } }, { on = { "c", "u" } }

}


-- stylua: ignore
local PREVIEW_DOUBLE_CANDS = {

	{ on = { "c", "i" } }, { on = { "c", "o" } }, { on = { "c", "h" } },
	{ on = { "c", "j" } }, { on = { "c", "k" } }, { on = { "c", "l" } },
	{ on = { "c", "n" } }, { on = { "w", "u" } }, { on = { "w", "i" } },
	{ on = { "w", "o" } }, { on = { "w", "h" } }, { on = { "w", "j" } },
	{ on = { "w", "k" } }, { on = { "w", "l" } }, { on = { "w", "n" } },
	{ on = { "t", "u" } }, { on = { "t", "i" } }, { on = { "t", "o" } },
	{ on = { "t", "h" } }, { on = { "t", "j" } }, { on = { "t", "k" } },
	{ on = { "t", "l" } }, { on = { "t", "n" } }, { on = { "v", "u" } },
	{ on = { "v", "i" } }, { on = { "v", "o" } }, { on = { "v", "h" } },
	{ on = { "v", "j" } }, { on = { "v", "k" } }, { on = { "v", "l" } },
	{ on = { "v", "n" } }, { on = { "x", "u" } }, { on = { "x", "i" } },
	{ on = { "x", "o" } }, { on = { "x", "h" } }, { on = { "x", "j" } },
	{ on = { "x", "k" } }, { on = { "x", "l" } }, { on = { "x", "n" } },
	{ on = { "z", "u" } }, { on = { "z", "i" } }, { on = { "z", "o" } },
	{ on = { "z", "h" } }, { on = { "z", "j" } }, { on = { "z", "k" } },
	{ on = { "z", "l" } }, { on = { "z", "n" } }, { on = { "b", "u" } },
	{ on = { "b", "i" } }, { on = { "b", "o" } }, { on = { "b", "h" } },
	{ on = { "b", "j" } }, { on = { "b", "k" } }, { on = { "b", "l" } }

}

local PARENT_DOUBLE_CANDS = {

	{ on = { "b", "n" } }, { on = { "q", "u" } }, { on = { "q", "i" } },
	{ on = { "q", "o" } }, { on = { "q", "h" } }, { on = { "q", "j" } },
	{ on = { "q", "k" } }, { on = { "q", "l" } }, { on = { "q", "n" } },
	{ on = { "a", "p" } }, { on = { "a", "y" } }, { on = { "a", "m" } },
	{ on = { "f", "p" } }, { on = { "f", "y" } }, { on = { "f", "m" } },
	{ on = { "e", "p" } }, { on = { "e", "y" } }, { on = { "e", "m" } },
	{ on = { "s", "p" } }, { on = { "s", "y" } }, { on = { "s", "m" } },
	{ on = { "d", "p" } }, { on = { "d", "y" } }, { on = { "d", "m" } },
	{ on = { "g", "p" } }, { on = { "g", "y" } }, { on = { "g", "m" } },
	{ on = { "r", "p" } }, { on = { "r", "y" } }, { on = { "r", "m" } },
	{ on = { "c", "p" } }, { on = { "c", "y" } }, { on = { "c", "m" } },
	{ on = { "w", "p" } }, { on = { "w", "y" } }, { on = { "w", "m" } },
	{ on = { "x", "p" } }, { on = { "x", "y" } }, { on = { "x", "m" } },
	{ on = { "t", "p" } }, { on = { "t", "y" } }, { on = { "t", "m" } },
	{ on = { "v", "p" } }, { on = { "v", "y" } }, { on = { "v", "m" } },
	{ on = { "b", "p" } }, { on = { "b", "y" } }, { on = { "b", "m" } },
	{ on = { "z", "p" } }, { on = { "z", "y" } }, { on = { "z", "m" } },
	{ on = { "q", "p" } }, { on = { "q", "y" } }, { on = { "q", "m" } }

}

-- debug function 
-- local function serialize(obj)
--     local lua = ""  
--     local t = type(obj)  
--     if t == "number" then  
--         lua = lua .. obj  
--     elseif t == "boolean" then  
--         lua = lua .. tostring(obj)  
--     elseif t == "string" then  
--         lua = lua .. string.format("%q", obj)  
--     elseif t == "table" then  
--         lua = lua .. "{"  
--         for k, v in pairs(obj) do  
--             lua = lua .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ","  
--         end  
--         local metatable = getmetatable(obj)  
--         if metatable ~= nil and type(metatable.__index) == "table" then  
--             for k, v in pairs(metatable.__index) do  
--                 lua = lua .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ","  
--             end  
--         end  
--         lua = lua .. "}"  
--     elseif t == "nil" then  
--         return nil  
--     else  
--         error("can not serialize a " .. t .. " type.")  
--     end  
--     return lua  
-- end

-- debug funcion 
-- local function table2string(tablevalue)
--     local stringtable = serialize(tablevalue)
--     print(stringtable)
--     return stringtable
-- end

-- FIXME: refactor this to avoid the loop
local function rel_position(file,view)

	local data
	if view == "current" then
		data = Folder:by_kind(Folder.CURRENT).window
	elseif view == "parent" then
		if Folder:by_kind(Folder.PARENT) == nil then
			return nil
		end
		data = Folder:by_kind(Folder.PARENT).window
	elseif view == "preview" then
		data = Folder:by_kind(Folder.PREVIEW).window
	end

	for i, f in ipairs(data) do
		if f == file then
			return i
		end
	end
end

-- FIXME: find a better way to do this
local function count_files(url, max)
	local cmd
	if ya.target_family() == "windows" then
		cmd = cx.active.conf.show_hidden and "dir /a " or "dir "
		cmd = cmd .. ya.quote(tostring(url))
	else
		cmd = cx.active.conf.show_hidden and "ls -A  " or "ls "
		cmd = cmd .. ya.quote(tostring(url)) .. " | wc -l"
	end

	if ya.target_family() == "windows" then
		local i, handle = 0, io.popen(cmd)
		for _ in handle:lines() do
			i = i + 1
			if i == max then
				break
			end
		end
		handle:close()
		return i
	else
		local f = io.popen(cmd)
		local num = tonumber(f:read("*all"))
		f:close()

		if num == nil then
			ya.err("caculate file num error, target folder: " .. ya.quote(tostring(url)))
		end

		if num > max then
			return max
		else
			return num
		end
	end
end

local function toggle_ui(st)
	ya.manager_emit("peek", { force = true })
	ya.render()
	if st.icon or st.mode then
		Folder.icon, Status.mode, st.icon, st.mode = st.icon, st.mode, nil, nil
		return
	end

	st.icon, st.mode = Folder.icon, Status.mode
	Folder.icon = function(self, file)
		if st.type == "global" then
			local pos = rel_position(file,"current")
			if not pos then
				local pos = rel_position(file,"parent")
				if not pos then
					local pos = rel_position(file,"preview")
					if not pos then
						return st.icon(self, file)
					else
						return ui.Span(PREVIEW_DOUBLE_KEYS[pos] .. " " .. file:icon().text .. " ")
					end
				else
					return ui.Span(PARRENT_DOUBLE_KEYS[pos] .. " " .. file:icon().text .. " ")
				end
			else
				return ui.Span(CURRENT_DOUBLE_KEYS[pos] .. " " .. file:icon().text .. " ")		
			end
		
		else
			local pos = rel_position(file,"current")
			if not pos then
				return st.icon(self, file)
			elseif st.current_num > #SINGLE_KEYS then
				return ui.Span(CURRENT_DOUBLE_KEYS[pos] .. " " .. file:icon().text .. " ")
			else
				return ui.Span(SINGLE_KEYS[pos] .. " " .. file:icon().text .. " ")
			end
		end
	end
	Status.mode = function(self)
		local style = self.style()
		return ui.Line {
			ui.Span(THEME.status.separator_open):fg(style.bg),
			ui.Span(" KJ-" .. tostring(cx.active.mode):upper() .. " "):style(style),
		}
	end
end

local function next(sync, args) ya.manager_emit("plugin", { "keyjump", sync = sync, args = table.concat(args, " ") }) end

local function count_preview_files(st)
	local folder = Folder:by_kind(Folder.CURRENT)
	local under_cursor_file = Folder:by_kind(Folder.CURRENT).window[folder.cursor - folder.offset + 1]
	if under_cursor_file.cha.is_dir then
		local split_char = ya.target_family() == "windows" and "\\" or "/"
		st.preview_num = count_files(cx.active.current.cwd .. split_char .. under_cursor_file.name, Preview.area.h)
	else
		st.preview_num = 0
	end
end

return {
	entry = function(_, args)
		local action = args[1]

		ya.err(action)
		-- Step 1: Patch the UI with our candidates

		-- enter normal, keep or select mode
		if action == "normal" or action == "keep" or action == "select" then
			if #SINGLE_KEYS >= Current.area.h then
				state.current_num = Current.area.h -- Fast path
			else
				state.current_num = #Folder:by_kind(Folder.CURRENT).window
				if state.current_num <= Current.area.h then -- Maybe the folder has not been full loaded yet
					state.current_num = count_files(cx.active.current.cwd, Current.area.h)
				end
			end

			state.type = action
			toggle_ui(state())
			return next(false, { "_read", state.current_num, nil, nil })
		end

		-- enter global mode
		if action == "global" then
			-- caculate file numbers of current window 
			state.current_num = #Folder:by_kind(Folder.CURRENT).window
			if state.current_num <= Current.area.h then -- Maybe the folder has not been full loaded yet
				state.current_num = count_files(cx.active.current.cwd, Current.area.h)
			end

			-- caculate file numbers of parent window 
			if Folder:by_kind(Folder.PARENT) ~= nil then
				state.parent_num = #Folder:by_kind(Folder.PARENT).window
				if state.parent_num <= Parent.area.h then -- Maybe the folder has not been full loaded yet
					state.parent_num = count_files(cx.active.parent.cwd, Parent.area.h)
				end
			else
				state.parent_num = 0
			end

			-- caculate file numbers of preview window 
			if Folder:by_kind(Folder.PREVIEW) ~= nil then
				state.preview_num = #Folder:by_kind(Folder.PREVIEW).window
				if state.preview_num <= Parent.area.h then -- Maybe the folder has not been full loaded yet
					count_preview_files(state)
				end
			else
				count_preview_files(state)
			end

			state.type = action
			toggle_ui(state())
			return next(false, { "_read", state.current_num, state.parent_num, state.preview_num })			
		end

		-- Step 2: Waiting to read the candidate from the user
		if action == "_read" then
			local current_num = tonumber(args[2])
			local parent_num = tonumber(args[3])
			local preview_num = tonumber(args[4])
			local current_cands,parent_cands,preview_cands,cands = {},{},{},{}

			-- generate cands of entry of current window
			if current_num ==0 then
				current_cands = {}
			elseif args[3] ~= nil or args[4] ~= nil then -- global mode disable signal key
				current_cands = { table.unpack(CURRENT_DOUBLE_CANDS, 1, current_num) }
			elseif current_num > #SINGLE_KEYS then
				current_cands = { table.unpack(CURRENT_DOUBLE_CANDS, 1, current_num) }
			else
				current_cands = { table.unpack(SIGNAL_CANDS, 1, current_num) }
			end

			-- generate cands of entry of parent window
			if parent_num ~= nil and parent_num ~= 0 then
				parent_cands = { table.unpack(PARENT_DOUBLE_CANDS, 1, parent_num) }
			else
				parent_cands = {}
				parent_num = 0
			end

			-- generate cands of entry of preview window
			if preview_num ~= nil and preview_num ~= 0 then
				preview_cands = { table.unpack(PREVIEW_DOUBLE_CANDS, 1, preview_num) }
			else
				preview_cands = {}
				preview_num = 0
			end

			--attach current cands to cands table
			for i = 1, #current_cands do 
				table.insert(cands, current_cands[i])
			end

			--attach parent cands to cands table
			for i = 1, #parent_cands do 
				table.insert(cands, parent_cands[i])
			end

			--attach preview cands to cands table
			for i = 1, #preview_cands do 
				table.insert(cands, preview_cands[i])
			end

			--attach special cands to cands table
			for i = 1, #SPECIAL_KEYS do --attach special key
				table.insert(cands, SPECIAL_CANDS[i])
			end

			local cand = ya.which { cands = cands, silent = true }

			if cand == nil then --never auto exit when pressing a nonexistent prompt key
				return next(false, { "_read", current_num, parent_num, preview_num })
			else
				return next(true, { "_apply", cand, current_num, parent_num, preview_num })
			end
		end

		-- Step 3: Restore the UI we patched in step 1, once we read the candidate
		toggle_ui(state())
		if action ~= "_apply" then
			return
		end

		local cand = tonumber(args[2])
		local current_entry_num = tonumber(args[3])
		local parent_entry_num = tonumber(args[4])
		local preview_entry_num = tonumber(args[5])
		local folder = Folder:by_kind(Folder.CURRENT)

		-- hit esc key
		if cand > (current_entry_num + parent_entry_num + preview_entry_num) and SPECIAL_KEYS[cand - current_entry_num - parent_entry_num - preview_entry_num] == "<Esc>" then
			return
		end

		-- apply global mode
		if state.type == "global" then

			-- hit current area
			if cand <= current_entry_num then -- hit normal key
				local current_folder = Folder:by_kind(Folder.CURRENT)
				ya.manager_emit("arrow", { cand - 1 + current_folder.offset - current_folder.cursor })

				next(true, { "global" })
				return
			end
			
			-- hit parent area
			if cand > current_entry_num and cand <= (current_entry_num + parent_entry_num) then
				local parent_folder = Folder:by_kind(Folder.PARENT)
				ya.manager_emit("leave", {})
				ya.manager_emit("arrow", { cand - current_entry_num - 1 + parent_folder.offset - parent_folder.cursor })
				next(true, { "global" })
				return		
			end

			-- hit preview area
			if cand > (current_entry_num + parent_entry_num) and cand <= (current_entry_num + parent_entry_num + preview_entry_num) then
				local preview_folder = Folder:by_kind(Folder.PREVIEW)
				ya.manager_emit("enter", {})
				ya.manager_emit("arrow", { cand - current_entry_num - parent_entry_num - 1 + preview_folder.offset - preview_folder.cursor })
				next(true, { "global" })
				return		
			end

			-- hit space key
			if SPECIAL_KEYS[cand - current_entry_num - parent_entry_num - preview_entry_num] == "<Space>" then
				local under_cursor_file = Folder:by_kind(Folder.CURRENT).window[folder.cursor - folder.offset + 1]
				local toggle_state = under_cursor_file:is_selected() and "false" or "true"
				ya.manager_emit("select", { state = toggle_state })
				ya.manager_emit("arrow", { 1 })
			end

			--never auto exit global mode
			next(true, { "global" })
			return
		end

		-- apply select mode
		if state.type == "select" then
			if cand <= current_entry_num then -- hit normal key
				local folder = Folder:by_kind(Folder.CURRENT)
				ya.manager_emit("arrow", { cand - 1 + folder.offset - folder.cursor })

				next(true, { "select" })
				return
			end

			-- hit space key
			if SPECIAL_KEYS[cand - current_entry_num] == "<Space>" then
				local under_cursor_file = Folder:by_kind(Folder.CURRENT).window[folder.cursor - folder.offset + 1]
				local toggle_state = under_cursor_file:is_selected() and "false" or "true"
				ya.manager_emit("select", { state = toggle_state })
				ya.manager_emit("arrow", { 1 })
			end

			--never auto exit select mode
			next(true, { "select" })
			return
		end

		-- apply keep mode and normal mode
		ya.manager_emit("arrow", { cand - 1 + folder.offset - folder.cursor })

		-- keep mode will auto enter when select folder and continue keep mode
		if state.type == "keep" and folder.window[cand].cha.is_dir then
			local folder = Folder:by_kind(Folder.CURRENT)
			ya.manager_emit("enter", {})
			next(true, { "keep" })
		end

		-- normal mode exit
	end,
}
