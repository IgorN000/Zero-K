local sqrt = math.sqrt
local pi = math.pi
local cos = math.cos
local sin = math.sin

local function DistSq(x1,z1,x2,z2)
	return (x1 - x2)*(x1 - x2) + (z1 - z2)*(z1 - z2)
end

local function Mult(b, v)
	return {b*v[1], b*v[2]}
end

local function AbsVal(v)
	return sqrt(v[1]*v[1] + v[2]*v[2])
end

local function Unit(v)
	local mag = AbsVal(v)
	if mag > 0 then
		return {v[1]/mag, v[2]/mag}
	else
		return v
	end
end

local function Norm(b, v)
	local mag = AbsVal(v)
	if mag > 0 then
		return {b*v[1]/mag, b*v[2]/mag}
	else
		return v
	end
end

local function AngleManual(v) -- in case Angle stops working
	if v[1] == 0 and v[2] == 0 then
		return 0
	end
	local mult = 1/AbsVal(v)
	local x, z = v[1]*mult, v[2]*mult
	Spring.Echo(x, z)
	if z > 0 then
		return math.acos(x)
	elseif z < 0 then
		return 2*math.pi - math.acos(x)
	elseif x < 0 then
		return math.pi
	end
	-- x < 0
	return 0
end

local function Angle(x, z)
	if z then
		return -Spring.GetHeadingFromVector(x, z)/2^15*pi + pi/2
	else
		return -Spring.GetHeadingFromVector(x[1], x[2])/2^15*pi + pi/2
	end
end

local function PolarToCart(mag, dir)
	return {mag*cos(dir), mag*sin(dir)}
end

local function Add(v1, v2)
	return {v1[1] + v2[1], v1[2] + v2[2]}
end

Spring.Utilities.Vector = {
	DistSq = DistSq,
	Mult = Mult,
	AbsVal = AbsVal,
	Unit = Unit,
	Norm = Norm,
	Angle = Angle,
	PolarToCart = PolarToCart,
	Add = Add,
}