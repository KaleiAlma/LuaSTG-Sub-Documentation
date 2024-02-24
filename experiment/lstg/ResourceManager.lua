---@meta
--- LuaSTG Sub Experimental Documentation: Resource Object Manager
--------------------------------------------------------------------------------

---@class lstg.ResourceManager
local M = {}

lstg.ResourceManager = M

---@param name lstg.ResourcePoolType
---@return lstg.ResourceCollection
function M.getResourceCollection(name)
end

---@param name lstg.ResourcePoolType
function M.setCurrentResourceCollection(name)
end

---@return lstg.ResourcePoolType
function M.getCurrentResourceCollection()
end

return M
