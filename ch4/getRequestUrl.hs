getRequestURL host apiKey resource id = host ++ "/" ++ resource ++ "/" ++ id ++ "?token=" ++ apiKey

genHostRequestBuilder host = (\apiKey resource id -> getRequestURL host apiKey resource id)
exampleUrlBuilder = genHostRequestBuilder "http://example.com"

genApiRequestBuilder hostBuilder apiKey = (\ resource id -> hostBuilder apiKey resource id)

addXto3 x = (\ b c d -> add4 x b c d)
