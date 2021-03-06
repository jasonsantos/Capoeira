local Capoeira={}

local _LASTID = 0

Capoeira._NAME = "Capoeira"
Capoeira._VERSION = "0.1"
Capoeira._COPYRIGHT = "Copyright (C) 2011 Capoeira Project"
Capoeira._DESCRIPTION = "Capoeira is a full-feature graphic application development engine and framework"

function Capoeira:new(id) 
	_LASTID = _LASTID + 1
	local _id = id or _LASTID
	return setmetatable({_ID=_id}, {
		__index=Capoeira,
		__call=Capoeira.new
	})
end

return setmetatable(Capoeira, {__call=Capoeira.new})
