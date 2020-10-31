#! /usr/bin/env lua

--  https://stackoverflow.com/questions/35910099/how-special-is-the-global-variable-g
--  _G table is prepended by _ENV, so it's really  _ENV ._G

for key, value in pairs( _G ) do
    local ty = type( value )
    if  ty ~= 'table' and ty ~= 'function' then
        print( key, value )
    end  --  normally, the only variable is  _VERSION
end  --  vars


for key, value in pairs( _G ) do
    if type( value ) == 'function' then
        print( key, 'function' )
    end
end  --  functs()


for key, value in pairs( _G ) do
    if key ~= '_G' and type( value ) == 'table' then
        print( key, 'table' )
        for k, v in pairs( value ) do
            print( '    ',  k,  type( v ) )
        end
    end
end  --  tables

--  eof  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

