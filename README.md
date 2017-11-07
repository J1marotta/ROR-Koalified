# Beyond The Desk


## Rails Two-Sided Marketplace

### Coder Academy Ruby on Rails Final Project
Due November 10th 2017


(pic of app)


#Deliverables
Design Documentation
Demonstrate your ability to break down the problem and design a solution.

- 1 - One page summary of your application including problem definition, solution.
* [Summary](https://docs.google.com/document/d/10j4bntSu_TVMSw3nLQZBkIEi8htvdvMnLu4BPICFaNM/edit?usp=sharing)


- 2 - User stories for the whole application.
- 3 - A workflow diagram of the user journey/s.
- 4 - Wireframes for at least 5 screens.
- 5 - Entity Relationship Diagram (ERD).
- 6 - Project plan and estimation.



##### Key concept I know I want to include
Fb or linkedin Login

I personally much prefer to log in with Facebook, and as it adds quite a bit of trust to users if you get their Facebook account, because it's a good way to verify their identity.

	STATUS : Failed to integrate

###### _Lessons learned_
After spending two days trying to integrate Facebook login, with Devise and Omniauth; I unfortunately had to pull the plug, as Time is a factor with this assignment.  I managed to successfully implement on localhost, but once I pushed to Heroku, it complicated matters as you have to change devise.rb and your facebook developer settings each time to swap between local and heroku, and in fact pushing to Heroku managed to break my local settings as well.

---

##### Key concept I know I want to include
HTML 5 TEMPLATE :
	I know that one of my weaknesses is design and front end css; My plan to mitigate this was to use a template from HTMLup.net

		STATUS: Implemented

###### _Lessons learned_
After a full 6 hours trying to integrate this as the templates are not designed specifically for rails; I managed to locate a bug that was stopping the custom JS from running and essentially breaking the whole design.

(For reference main.js was dependant on skel.js and it needed to be required inside the file.
Additionally Font-awesome was being used, and it was erroring; This was solved with the font-awesome gem, Which I found very quickly compared to the several hours with the js errors )

---

##### Key concept I know I want to include
Driver Posts Availability :
	My design plan had Drivers, posting availabilities As a simple form, with 1 hour blocks.

		STATUS: Implemented

###### _Lessons learned_
	Originally, I had used strings in the database for the the days of the week, and I also had quite a bit of problems, organising the information inside the database; I had my data stored as UTC, which took me a full day to convert to local time.  This was infuriating and the time would have been much better spend learning how to incorporate a JS date and time picker. My lack of JS skills definitely manifested in this scenario. What should have been a quite simple and easily Implemented widget.

---




_The marketplace is for Time, as a Learner you can purchase one hour blocks of time which Drivers can post._




Rails application code
Demonstrate Ruby on Rails development skills.

- [x] Create your application using Ruby on Rails.
- [x]  Demonstrate knowledge of Rails conventions.
- [x]  Use postgresql database in development.
- [ ] Use an API (eg. Omniauth, Geocoding, Maps, other..).
- [x] Use appropriate gems.
- [X] Use environmental variables to protect API keys etc. (dotenv used)
- [ ] Implement a payment system for your product. (e.g. Stripe)
- [ ] Your app must send transactional emails (eg. using Mailgun).
- [ ] Your app should have an internal user messaging system.
- [ ] Your app will have some type of searching, sorting and/or filtering capability.
- [ ] Your app will have some type of file uploading capability (eg. images).
- [x] Your app will have authentication (eg. Devise, must have full functionality in place).
- [x] Your app will have authorisation (users have restrictions on what they can see and edit).
- [] Document your application with a README that explains how to setup, configure and use your application.






# Project Title

One Paragraph of project description goes here

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags).

## Authors

* **James Marotta** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## Acknowledgments

##### HTML5UP template
	This is a great resource, and I've included their readme inside the files as html5upreadme.md
	[html5up.net](https://html5up.net/)
	I can Acknowledge my weaknesses, and design is definitely one of them, using a template allows for quick proof of concept and faster prototyping.


* Hat tip to anyone who's code was used
* Inspiration
* etc


## License

Copyright 2017 James Marotta

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
