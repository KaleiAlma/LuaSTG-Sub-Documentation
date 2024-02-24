---@meta
--- LuaSTG Sub Experimental Documentation: Resource Objects
--------------------------------------------------------------------------------

---@class lstg.ResourceCollection
local M = {}

--------------------------------------------------------------------------------

--- Resource Creation

---@param texture_name string
---@param path string
---@param mipmap boolean|nil
---@return lstg.ResourceTexture
function M:createTextureFromFile(texture_name, path, mipmap)
end

---@param sprite_name string
---@param texture string|lstg.ResourceTexture
---@param x number|nil
---@param y number|nil
---@param width number|nil
---@param height number|nil
---@param a number|nil
---@param b number|nil
---@param rect boolean|nil
---@return lstg.ResourceSprite
function M:createSprite(sprite_name, texture, x, y, width, height, a, b, rect)
end

---@param sprite_sequence_name string
---@param sprite_list lstg.ResourceSprite[]
---@param interval number
---@return lstg.ResourceSpriteSequence
function M:createSpriteSequence(sprite_sequence_name, sprite_list, interval)
end

---@param sprite_sequence_name string
---@param texture string|lstg.ResourceTexture
---@param x number
---@param y number
---@param sprite_width number
---@param sprite_height number
---@param sprite_columns number
---@param sprite_rows number
---@param interval number
---@param a number|nil
---@param b number|nil
---@param rect boolean|nil
---@return lstg.ResourceSpriteSequence
function M:createSpriteSequence(sprite_sequence_name, texture, x, y, sprite_width, sprite_height, sprite_columns, sprite_rows, interval, a, b, rect)
end

--------------------------------------------------------------------------------

--- Resource Deletion

---@param texture string|lstg.ResourceTexture
function M:removeTexture(texture)
end

---@param sprite string|lstg.ResourceSprite
function M:removeSprite(sprite)
end

---@param sprite_sequence string|lstg.ResourceSpriteSequence
function M:removeSpriteSequence(sprite_sequence)
end

--------------------------------------------------------------------------------

--- Resource Retrieval (from pool)

---@param texture_name string
---@return lstg.ResourceTexture
function M:getTexture(texture_name)
end

---@param sprite_name string
---@return lstg.ResourceSprite
function M:getSprite(sprite_name)
end

---@param sprite_sequence_name string
---@return lstg.ResourceSpriteSequence
function M:getSpriteSequence(sprite_sequence_name)
end

--------------------------------------------------------------------------------

--- Test for resources in pool

---@param texture_name string
---@return boolean
function M:isTextureExist(texture_name)
end

---@param sprite_name string
---@return boolean
function M:isSpriteExist(sprite_name)
end

---@param sprite_sequence_name string
---@return boolean
function M:isSpriteSequenceExist(sprite_sequence_name)
end

return M
