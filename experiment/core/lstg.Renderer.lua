---@meta
--- LuaSTG Sub Experimental Documentation: Renderer
--------------------------------------------------------------------------------

---@param tex_name string
---@param blend lstg.BlendMode
---@param mesh_obj lstg.Mesh
function lstg.RenderMesh(tex_name, blend, mesh_obj)
end

--- Draws an image in 3D.
--- Affected by `lstg.SetImageScale()`.
---@param imgname string
---@param x number
---@param y number
---@param z number
---@param rx number Image rotation on the x axis.
---@param ry number Image rotation on the y axis.
---@param rz number Image rotation on the z axis.
---@param hscale number|nil Image horizontal scale, 1 if unspecified.
---@param vscale number|nil Image vertical scale, hscale or 1 if unspecified.
function lstg.Render3D(imgname, x, y, z, rx, ry, rz, hscale, vscale)
end
