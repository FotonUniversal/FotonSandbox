--Roblox Enviroment, Credits By Riz-ve:
local RealRenv = {-- by Riz-ve
	print = print, warn = warn, error = error, assert = assert, collectgarbage = collectgarbage, require = require,
	select = select, tonumber = tonumber, tostring = tostring, type = type, xpcall = xpcall,
	pairs = pairs, next = next, ipairs = ipairs, newproxy = newproxy, rawequal = rawequal, rawget = rawget,
	rawset = rawset, rawlen = rawlen, gcinfo = gcinfo,

	coroutine = {
		create = coroutine.create, resume = coroutine.resume, running = coroutine.running,
		status = coroutine.status, wrap = coroutine.wrap, yield = coroutine.yield,
	},

	bit32 = {
		arshift = bit32.arshift, band = bit32.band, bnot = bit32.bnot, bor = bit32.bor, btest = bit32.btest,
		extract = bit32.extract, lshift = bit32.lshift, replace = bit32.replace, rshift = bit32.rshift, xor = bit32.xor,
	},

	math = {
		abs = math.abs, acos = math.acos, asin = math.asin, atan = math.atan, atan2 = math.atan2, ceil = math.ceil,
		cos = math.cos, cosh = math.cosh, deg = math.deg, exp = math.exp, floor = math.floor, fmod = math.fmod,
		frexp = math.frexp, ldexp = math.ldexp, log = math.log, log10 = math.log10, max = math.max, min = math.min,
		modf = math.modf, pow = math.pow, rad = math.rad, random = math.random, randomseed = math.randomseed,
		sin = math.sin, sinh = math.sinh, sqrt = math.sqrt, tan = math.tan, tanh = math.tanh,
	},

	string = {
		byte = string.byte, char = string.char, find = string.find, format = string.format, gmatch = string.gmatch,
		gsub = string.gsub, len = string.len, lower = string.lower, match = string.match, pack = string.pack,
		packsize = string.packsize, rep = string.rep, reverse = string.reverse, sub = string.sub,
		unpack = string.unpack, upper = string.upper,
	},

	table = {
		concat = table.concat, insert = table.insert, pack = table.pack, remove = table.remove, sort = table.sort,
		unpack = table.unpack,
	},

	utf8 = {
		char = utf8.char, charpattern = utf8.charpattern, codepoint = utf8.codepoint, codes = utf8.codes,
		len = utf8.len, nfdnormalize = utf8.nfdnormalize, nfcnormalize = utf8.nfcnormalize,
	},

	os = {
		clock = os.clock, date = os.date, difftime = os.difftime, time = os.time,
	},

	delay = delay, elapsedTime = elapsedTime, spawn = spawn, tick = tick, time = time, typeof = typeof,
	UserSettings = UserSettings, version = version, wait = wait, _VERSION = _VERSION,

	task = {
		defer = task.defer, delay = task.delay, spawn = task.spawn, wait = task.wait,
	},

	debug = {
		traceback = debug.traceback, profilebegin = debug.profilebegin, profileend = debug.profileend,
	},

	game = game, workspace = workspace, Game = game, Workspace = workspace,

	getmetatable = getmetatable, setmetatable = setmetatable
}

--rest of code is the blocking.
local function NilReturn(...)
	return nil --💀
end

local function RetTrue(...)
	return true
end
local function RetFalse(...)
	return false
end

local function RetSelfVal(...)
	return ...
end

local function printRet(...)
	--code to set on custom gui...
	print(...)
	return ...
end

local function errorRet(...)
	--code to set on custom gui...
	-- idk how to make this without braking rn, im lazy...
	local er = ...
	warn("err" .. tostring(er))
	return ...
end

local function warnRet(...)
	--code to set on custom gui...
	warn(...)
	return ...
end

local base64 = require(script.Parent.base64)
local bs64 = require(script.Parent.bs64)
local lz4 = require(script.Parent.lz4)

return {-- by Riz-ve
	print = print, warn = warn, error = error, assert = assert, collectgarbage = NilReturn, require = require, -- see if require is dangerous...
	select = NilReturn, tonumber = tonumber, tostring = tostring, type = type, xpcall = xpcall,
	pairs = pairs, next = next, ipairs = ipairs, newproxy = NilReturn, rawequal = NilReturn, rawget = NilReturn,
	rawset = NilReturn, rawlen = NilReturn, gcinfo = NilReturn, skull = "💀",
	
	--coroutine = { -- removed bc i think this can be dangerous. for now...
	--	create = coroutine.create, resume = coroutine.resume, running = coroutine.running,
	--	status = coroutine.status, wrap = coroutine.wrap, yield = coroutine.yield,
	--},

	bit32 = {
		arshift = bit32.arshift, band = bit32.band, bnot = bit32.bnot, bor = bit32.bor, btest = bit32.btest,
		extract = bit32.extract, lshift = bit32.lshift, replace = bit32.replace, rshift = bit32.rshift, xor = bit32.xor,
	},
	
	base64 = { 
		makeencoder = base64.makeencoder, makedecoder = base64.makedecoder,
		encode = base64.encode, decode = base64.decode,
	},
	
	bs64 = {
		decode = bs64.decode, encode = bs64.encode,
	},
	
	lz4 = {
		compress = lz4.compress, decompress = lz4.decompress,
	},
	
	math = {
		abs = math.abs, acos = math.acos, asin = math.asin, atan = math.atan, atan2 = math.atan2, ceil = math.ceil,
		cos = math.cos, cosh = math.cosh, deg = math.deg, exp = math.exp, floor = math.floor, fmod = math.fmod,
		frexp = math.frexp, ldexp = math.ldexp, log = math.log, log10 = math.log10, max = math.max, min = math.min,
		modf = math.modf, pow = math.pow, rad = math.rad, random = math.random, randomseed = math.randomseed,
		sin = math.sin, sinh = math.sinh, sqrt = math.sqrt, tan = math.tan, tanh = math.tanh,
	},

	string = {
		byte = string.byte, char = string.char, find = string.find, format = string.format, gmatch = string.gmatch,
		gsub = string.gsub, len = string.len, lower = string.lower, match = string.match, pack = string.pack,
		packsize = string.packsize, rep = string.rep, reverse = string.reverse, sub = string.sub,
		unpack = string.unpack, upper = string.upper,
	},

	table = {
		concat = table.concat, insert = table.insert, pack = table.pack, remove = table.remove, sort = table.sort,
		unpack = table.unpack,
	},

	utf8 = {
		char = utf8.char, charpattern = utf8.charpattern, codepoint = utf8.codepoint, codes = utf8.codes,
		len = utf8.len, nfdnormalize = utf8.nfdnormalize, nfcnormalize = utf8.nfcnormalize,
	},

	os = {
		clock = os.clock, date = os.date, difftime = os.difftime, time = os.time,
	},

	delay = delay, elapsedTime = elapsedTime, spawn = spawn, tick = tick, time = time, typeof = typeof,
	UserSettings = UserSettings, version = version, wait = wait, _VERSION = _VERSION,

	task = {
		--TODO: see if task can break sandbox...
		defer = task.defer, delay = task.delay, spawn = task.spawn, wait = task.wait,
	},

	debug = {
		traceback = debug.traceback, profilebegin = debug.profilebegin, profileend = debug.profileend,
	},

	game = NilReturn, workspace = NilReturn, Game = NilReturn, Workspace = NilReturn,

	getmetatable = NilReturn, setmetatable = NilReturn
}

