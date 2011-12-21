package.path = ';;./?.lua;./testsuite/?.lua;../testsuite/?.lua;./src/?.lua;../src/?.lua;../../src/?.lua'

local capoeira = require'capoeira'

assert(capoeira._NAME =='Capoeira')
assert(capoeira._VERSION =='0.1')
assert(capoeira._COPYRIGHT == "Copyright (C) 2010 Capoeira Project")
assert(capoeira._DESCRIPTION =='Capoeira is a full-feature graphic application development engine and framework')

do
	local engine = capoeira:new()

	assert(engine._NAME == capoeira._NAME)
	assert(engine._VERSION == capoeira._VERSION)
	assert(engine._DESCRIPTION == capoeira._DESCRIPTION)
end

print'OK'
