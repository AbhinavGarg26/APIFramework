Feature: Sample feature

Scenario: Testing valid GET endpoint
Given url 'https://jsonplaceholder.typicode.com/todos/1'
When method GET
Then status 200

Scenario: Testing the exact response of a GET endpoint
Given url 'https://jsonplaceholder.typicode.com/todos/1'
When method GET
Then status 200
And match $ == { "userId": 1,"id": 1,"title": "delectus aut autem","completed": false }
And match $.userId == 1
And match $ contains {"userId": 1}
And match $ == { "userId": #notnull,"id": 1,"title": "delectus aut autem","completed": false }
And assert response.length == 1
And match response[0].title == "delectus aut autem"