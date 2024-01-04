# ReCTJson
A Json parsing lib for the ReCT programming language

**How to use:**  
To have the lib parse your Json just call the `ParseJson()` function inside the package
```js
package sys; use sys;
package dll Json;

var myJsonText <- "{}";
var parsedJson <- Json::ParseJson(myJsonText);
```
The `ParseJson()` function will return an object of type `JsonEntry`.

The object contains two properties, `Type` and `Value`. In most cases `Type` will be `JsonObject`, in which case you can cast `Value` to that type and use the following functions to get data:
```
jsonObj->GetBool(key string)   bool
jsonObj->GetInt(key string)    int
jsonObj->GetFloat(key string)  float
jsonObj->GetString(key string) string
jsonObj->GetObject(key string) JsonObject
jsonObj->GetList(key string)   JsonList
```
Also you can get a list of the objects keys by using:
```js
jsonObj->GetKeys() stringArr
```
And also the number of entries by using:
```js
jsonObject->GetLength()
```
If it's a JsonList you'd cast it to said type and use the following functions:
```js
jsonLst->GetBool(index int)   bool
jsonLst->GetInt(index int)    int
jsonLst->GetFloat(index int)  float
jsonLst->GetString(index int) string
jsonLst->GetObject(index int) JsonObject
jsonLst->GetList(index int)   JsonList
```
And to get a JsonLists length you can use the `jsonLst->GetLength()` function.

If the `Type` field matches a primitive then you may expect `Value` to be said primitive
