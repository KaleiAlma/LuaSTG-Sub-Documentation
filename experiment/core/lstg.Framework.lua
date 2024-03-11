---@meta
--- LuaSTG Sub Experimental Documentation: Framework Methods
--------------------------------------------------------------------------------

--- Added in LuaSTG Sub v0.19.5.
---
--- Switches the current graphics card during runtime.  
--- WARNING: If the ability to switch graphics cards is provided in an in-game  
--- settings screen, be sure to warn users that it may take a long time!
---@param gpu string
function lstg.ChangeGPU(gpu)
end

---@class lstg.MonitorInfo
---@field x integer
---@field y integer
---@field width integer
---@field height integer

--- Added in LuaSTG Sub v0.19.6.
---@return lstg.MonitorInfo[]
function lstg.ListMonitor()
end

---@param width integer
---@param height integer
---@param vsync boolean
---@param monitor integer
function lstg.VideoModeWindowed(width, height, vsync, monitor)
end

---@param width integer
---@param height integer
---@param vsync boolean
---@param monitor integer
function lstg.VideoModeFSBorderless(width, height, vsync, monitor)
end

---@param width integer
---@param height integer
---@param vsync boolean
function lstg.VideoModeFSExclusive(width, height, vsync)
end
