## Unit Tests in Solidity

This directory contains all the unit tests. These tests are run from the .js tests that are written in the root folder. Those are the integrations tests. Basically, the libraries and interfaces need the unit tests here, because libraries and interfaces dont generate artifacts that are needed in integration tests. So, we first write contracts which contain functions that call the library and simply return what the library returns, just to get the artifacts. Then we use these artifacts in integration tests to test the libraries.



