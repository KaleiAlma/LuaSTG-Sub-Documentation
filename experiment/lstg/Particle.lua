---@meta particle
--- LuaSTG Sub Experimental Documentation: Particles
--------------------------------------------------------------------------------

---@class lstg.Particles
local M = {}

--- Creates a new pool of 2D particles.
---@param img string
---@param blend lstg.BlendMode
---@param size integer the amount of particles in the pool
---@return lstg.Particles.Pool2D
function M.NewPool2D(img, blend, size)
end

--- Creates a new pool of 3D particles.
---@param img string
---@param blend lstg.BlendMode
---@param size integer the amount of particles in the pool
---@return lstg.Particles.Pool3D
function M.NewPool3D(img, blend, size)
end

--------------------------------------------------------------------------------

---@class lstg.Particles.Pool2D
local Pool2D = {}

---@class lstg.Particles.Particle2D
---
---@field x number
---@field y number
---@field vx number
---@field vy number
---@field ax number
---@field ay number
---@field sx number x scale (hscale)
---@field sy number y scale (vscale)
---@field rot number
---@field omiga number
---@field timer number
---@field color lstg.Color
---@field a number
---@field r number
---@field g number
---@field b number
---@field extra1 number extra parameter, can be used in pool:Apply()
---@field extra2 number extra parameter, can be used in pool:Apply()
---@field extra3 number extra parameter, can be used in pool:Apply()

--- Adds a new particle to the pool and returns it.
---@param x number
---@param y number
---@param rot number|nil
---@param vx number|nil
---@param vy number|nil
---@param hscale number|nil
---@param vscale number|nil
---@return lstg.Particles.Particle2D
---@overload fun(self:lstg.Particles.Pool2D, x:number, y:number, rot:number, vx:number, vy:number, scale:number):lstg.Particles.Particle2D
function Pool2D:AddParticle(x, y, rot, vx, vy, hscale, vscale)
end

--- Updates the pool.
function Pool2D:Update()
end

--- Renders all the particles in the pool.
function Pool2D:Render()
end

--- Runs a function for each of the particles in the pool.
---@param fn fun(p:lstg.Particles.Particle2D)
function Pool2D:Apply(fn)
end

--- Returns the size of the pool (not current particles)
---@return integer
function Pool2D:GetSize()
end

---@class lstg.Particles.Pool3D
local Pool3D = {}

---@class lstg.Particles.Particle3D
---
---@field x number
---@field y number
---@field z number
---@field vx number
---@field vy number
---@field vz number
---@field ax number
---@field ay number
---@field az number
---@field sx number x scale (hscale)
---@field sy number y scale (vscale)
---@field rx number x rotation
---@field ry number y rotation
---@field rz number z rotation
---@field ox number x omiga
---@field oy number y omiga
---@field oz number z omiga
---@field timer number
---@field color lstg.Color
---@field a number
---@field r number
---@field g number
---@field b number
---@field extra1 number extra parameter, can be used in pool:Apply()
---@field extra2 number extra parameter, can be used in pool:Apply()
---@field extra3 number extra parameter, can be used in pool:Apply()
---@field extra4 number extra parameter, can be used in pool:Apply()

--- Adds a new particle to the pool and returns it.
---@param x number
---@param y number
---@param z number
---@param vx number|nil
---@param vy number|nil
---@param vz number|nil
---@param rx number|nil
---@param ry number|nil
---@param rz number|nil
---@param hscale number|nil
---@param vscale number|nil
---@return lstg.Particles.Particle3D
---@overload fun(self:lstg.Particles.Pool3D, x:number, y:number, z:number, vx:number, vy:number, vz:number, rx:number, ry:number, rz:number, scale:number):lstg.Particles.Particle3D
function Pool3D:AddParticle(x, y, z, vx, vy, vz, rx, ry, rz, hscale, vscale)
end

--- Updates the pool.
function Pool3D:Update()
end

--- Renders all the particles in the pool.
function Pool3D:Render()
end

--- Runs a function for each of the particles in the pool.
---@param fn fun(p:lstg.Particles.Particle3D)
function Pool3D:Apply(fn)
end

--- Returns the size of the pool (not current particles)
---@return integer
function Pool3D:GetSize()
end

return M
