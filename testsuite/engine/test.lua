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

do 
	local engine = capoeira:new()
	local new_engine = capoeira:new()

	assert(new_engine._NAME == engine._NAME)
	assert(new_engine._VERSION == engine._VERSION)
	assert(new_engine._DESCRIPTION == engine._DESCRIPTION)

	assert(new_engine ~= engine)
end

print'OK'
