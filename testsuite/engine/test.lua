package.path = ';;./?.lua;./testsuite/?.lua;../testsuite/?.lua;./src/?.lua;../src/?.lua;../../src/?.lua'

local capoeira = require'capoeira'

assert(capoeira._NAME =='Capoeira')
assert(capoeira._VERSION =='0.1')
assert(capoeira._COPYRIGHT == "Copyright (C) 2011 Capoeira Project")
assert(capoeira._DESCRIPTION =='Capoeira is a full-feature graphic application development engine and framework')

do -- simple engine test
	local engine = capoeira:new()

	assert(engine._NAME == capoeira._NAME)
	assert(engine._VERSION == capoeira._VERSION)
	assert(engine._DESCRIPTION == capoeira._DESCRIPTION)
end

do -- simple engine test with two engines
	local engine = capoeira:new()
	local new_engine = capoeira:new()

	assert(new_engine._NAME == engine._NAME)
	assert(new_engine._VERSION == engine._VERSION)
	assert(new_engine._DESCRIPTION == engine._DESCRIPTION)

	assert(new_engine ~= engine)
end

do -- test for engine ID generation
	local id_1, id_2
	do 
		local engine = capoeira:new()
		id_1 = engine._ID
		assert(id_1)
	end

	do
		local engine = capoeira:new()
		id_2 = engine._ID	
		assert(id_2)
	end

	assert(id_1 ~= id_2)
end

do -- test for engine arbitrary ID
	local engine = capoeira:new'daEngine'
	assert(engine._ID == 'daEngine')
end

print'OK'
