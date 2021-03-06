# KOALIFIED

## Rails Two-Sided Marketplace

### Coder Academy Ruby on Rails Final Project
Due November 10th 2017
(two week sprint)


![Koalified](/public/pic.png)

Peer to Peer driving Lessons


_The marketplace for Time, as a Learner you can purchase one hour blocks of time which Drivers can post._

---

Peer to Peer Driving Lessons, Drivers can post their availabilities and learners can book up to a week in the future. Payment is done through the app and the driver gets a high % of the payment.



## Getting Started

it's live at
[Koalified!](www.koalified2drive.herokuapp.com)
You can sign up for a profile, upload an avatar and your license data,
and then you can post your availabilities;

Learner drivers can sign up and select automated ads from available drivers; and contact them or make a booking.



### Prerequisites

Gems used

```
# user authentication, devise
gem 'devise'

# Font-awesome
gem "font-awesome-rails"

# shrine gem for file uploading
gem "shrine"

# cloudinary gem
gem "shrine-cloudinary"
```

for testing

```
gem 'dotenv-rails'
# rspec
gem 'rspec-rails', '~> 3.6'

# rubocop
gem 'rubocop', '~> 0.51.0', require: false

```


### Installing

First you will need rails: version 5.1.4
ruby version : ruby 2.4.1p111

	```
	git clone
	cd koalified
	bundle
	```

	then run rails server
	```
	rails s
	```

	and goto localhost:3000





### Coding Style Tests

RuboCop was used, for formating and enforcing Style.

To run rubocop

```
$ rubocop
```

it inherits from .rubocop_todo.yml and you can adjust the test slightly in there.



## Deployment
To Deploy you will need your own STRIPE_KEY and SECRET_KEY, which I've stored as environment variables.


## Built With

* [html5up.net](http://www.html5up.net) - Great place for templates
* [RailsGuides](http://guides.rubyonrails.org/) - the place for rails info
* [Heroku](https://www.heroku.com/) - Premier Deployment resource.



#Deliverables
Design Documentation
Demonstrate your ability to break down the problem and design a solution.


- [Presentation](Presentation)

- 1 - One page summary of your application including problem definition, solution.
* [Summary](https://docs.google.com/document/d/10j4bntSu_TVMSw3nLQZBkIEi8htvdvMnLu4BPICFaNM/edit?usp=sharing)


- 2 - User stories for the whole application.
[Trello] (https://trello.com/b/hFWA21QZ/koalified)


- 3 - A workflow diagram of the user journeys.

[Flow](/public/flow.png)

[Flow2](/public/flow2.png)

Possible journeys at the moment, currently bookings redirects to "learn" - as implementation is pending.


- 4 - Wireframes for at least 5 screens.
 I attempted to make high fidelity wireframes with figma, but I find it incredibly clumsy, and it seriously took me a full day to get these frames done, and I decided to stop and begin work on other aspects of the project.
[Figma](https://www.figma.com/file/PsSKShufCQPDR3cvui8NlWDc/Koalified)

- 5 - Entity Relationship Diagram (ERD).
![Dbdesigner](/public/erd.png)


- 6 - Project plan and estimation.
[Summary](/public/Summary.pdf)



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

Additionally further into development; I found that this proved to be a mistake, as it did not include bootstrap, and my css skills are sub-par at best. While my landing page looks swish, the rest of my app looks more and more inconsistent.



---

##### Key concept I know I want to include
Driver Posts Availability :
	My design plan had Drivers, posting availabilities As a simple form, with 1 hour blocks.

		STATUS: Implemented

###### _Lessons learned_

Originally, I had used strings in the database for the the days of the week, and I also had quite a bit of problems, organising the information inside the database; I had my data stored as UTC, which took me a full day to convert to local time.  This was infuriating and the time would have been much better spend learning how to incorporate a JS date and time picker. My lack of JS skills definitely manifested in this scenario. What should have been a quite simple and easily Implemented widget.


Eventually I made this work, By making availabilities only created by the current user, rendered when posting new availabilities, and all availabilities posted when searching for a booking.

The next step is to trigger the booking boolean once the booking is confirmed and paid. and to remove it from the adverts view.

---



##### Key concept I know I want to include
STRIPE Payment for Drivers

I almost always prefer PayPal personally when it's an option because I know it's safe and secure; but Stripe is an excellent platform
And I managed to have a price and checkout function, there is unfortunately no receipts no transactional history or tracking, and most importantly the Drivers are not connected to the site; meaning they never have the opportunity to get paid.

	STATUS : Failed to integrate

###### _Lessons learned_
I tried several different tutorials online on how to integrate STRIPE Connect, but unfortunately I was not successful. My main problems were when I tried to integrate the Users as merchants.
I didn't correctly set up the tables to handle the data, and ran into compounding issues.



### Rails application code
Demonstrate Ruby on Rails development skills.

- [x] Create your application using Ruby on Rails.
- [x] Demonstrate knowledge of Rails conventions.
- [x] Use postgresql database in development.
- [x] Use appropriate gems.
- [X] Use environmental variables to protect API keys etc. (dotenv used)
- [x] Implement a payment system for your product. (e.g. Stripe)
- [x] Your app will have some type of searching, sorting and/or filtering capability.
- [x] Your app will have some type of file uploading capability (eg. images).
- [x] Your app will have authentication (eg. Devise, must have full functionality in place).
- [x] Your app will have authorisation (users have restrictions on what they can see and edit).
- [x] Document your application with a README that explains how to setup, configure and use your application.

--- YET TO BE IMPLEMENTED
- [ ] Your app must send transactional emails (eg. using Mailgun).
- [ ] Your app should have an internal user messaging system.
- [ ] Use an API (eg. Omniauth, Geocoding, Maps, other..)



#####  OUTCOMES SUMMARY
	This was a hugely humbling experience for me; I was naive about how much time everything would take to implement, and My time management skills needed huge improvements.  


###### _Lessons learned_
 	Time management, expectation vs reality is a big factor here, Using the template for example compounded time issues, when trying to style on top of the template css.

	I spend hours trying to learn and implement a feature only to run into errors and have to start from scratch.

	I would also like to in the future have implemented much more testing from much earlier in the development cycle, trying to develop a TDD mentality.







## Authors

* **James Marotta** - [j1marotta](https://github.com/j1marotta)


## Acknowledgments

##### HTML5UP template
	This is a great resource, and I've included their readme inside the files as html5upreadme.md
	[html5up.net](https://html5up.net/)
	I can Acknowledge my weaknesses, and design is definitely one of them, using a template allows for quick proof of concept and faster prototyping.


## License

Copyright 2017 James Marotta

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
