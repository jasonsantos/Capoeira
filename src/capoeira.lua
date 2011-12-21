local Capoeira={}

local _LASTID = 0

Capoeira._NAME = "Capoeira"
Capoeira._VERSION = "0.1"
Capoeira._COPYRIGHT = "Copyright (C) 2011 Capoeira Project"
Capoeira._DESCRIPTION = "Capoeira is a full-feature graphic application development engine and framework"

function Capoeira:new() 
	_LASTID = _LASTID + 1
	return setmetatable({_ID=_LASTID}, {
		__index=Capoeira,
		__call=Capoeira.new
	})
end

return setmetatable(Capoeira, {__call=Capoeira.new})
