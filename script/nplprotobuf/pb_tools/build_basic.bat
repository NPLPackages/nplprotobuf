set PROTO_DIR=../protos/
set LUA_OUT_DIR=../protoluas/
for %%i in (%PROTO_DIR%*.proto) do (  
echo %%i
rem #convert to lua
protoc.exe -I=%PROTO_DIR% --plugin=protoc-gen-lua="protoc-gen-lua.bat" --lua_out=%LUA_OUT_DIR% %PROTO_DIR%%%i
)
pause
