del './Build/json.dll'
rctc ./Classes/main.rct -s -f -o './Build/json.dll'
echo -- [ReCT Program] --
echo 
dotnet './Build/json.dll'