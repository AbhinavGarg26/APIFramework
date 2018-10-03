Feature: Sample feature

Scenario: Testing valid GET endpoint
Given url 'http://localhost:8080/user/get'
When method GET
Then status 200

Scenario: Testing the exact response of a GET endpoint
Given url 'http://localhost:8080/user/get'
When method GET
Then status 200
And match $ == {id:"1234",name:"John Smith"}
And match $.id == "1234"