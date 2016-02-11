== README

## Blocmetrics: API Tracking Service and Reporting Tool

An analytics service and reporting tool that can track web app user activity and report results.

### Blocmetrics analytics service offers a few key features:

* A client-side JavaScript snippet that allows a user to track events on their website.
* A server-side API that captures and saves those events to a database.
* A Rails application that displays the captured event data for a user.

## Tools 

* Devise gem for authentication
* User, RegisteredApplication, job tables with CRUD
* Faker gem to simulate a variety of tracked events
* group_by method to sort events(jobs) by name
* Namespace API controller  to receive requests in JSON format by skipping verify_authenticity_token
* CORS to allow cross-orign request in a controllled manner without opening up securities vulnerabilities.
* Test API with curl  
```
curl -v -H "Accept: application/json" -H "Origin: http://registered_application.com" -H "Content-Type: application/json" -X POST -d '{"name":"foobar"}'  http://localhost:3000/api/jobs
```
* Javascript report method embaded on the trackable app page and call Ajax
* Chartkick gem from Javascript library to show pie/line chart