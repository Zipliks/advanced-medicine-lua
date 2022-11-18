---@meta
bit32 = {}

---@param v integer
---@param pos integer
---@param width? integer
---@return integer
function bit32.extract(v, pos, width) end

---@param v integer
---@param u integer
---@param pos integer
---@param width? integer
---@return integer
function bit32.replace(v, u, pos, width) end

---@param v integer
---@param a integer
---@return integer
function bit32.arshift(v, a) end

---@param v integer
---@param a integer
---@return integer
function bit32.rshift(v, a) end

---@param v integer
---@param a integer
---@return integer
function bit32.lshift(v, a) end

---@param v integer
---@return integer
function bit32.bnot(v) end

---@param v integer
---@param ... integer
---@return integer
function bit32.band(v, ...) end

---@param v integer
---@param ... integer
---@return integer
function bit32.bor(v, ...) end

---@param v integer
---@param ... integer
---@return boolean
function bit32.btest(v, ...) end

---@param v integer
---@param a integer
---@return integer
function bit32.rrotate(v, a) end

---@param v integer
---@param a integer
---@return integer
function bit32.lrotate(v, a) end

return bit32
