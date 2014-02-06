# Charitable Heroes

Rails app for Charitable Heroes

## Background

After a [rejection from Kickstarter](http://techcrunch.com/2012/10/07/the-story-of-lockitron-crowdfunding-without-kickstarter/), we decided to follow in the footsteps of [App.net](https://app.net/) and make our own crowdfunding site for [Lockitron](https://lockitron.com). We've been absolutely blown away by the response. As a first step in what will hopefully be a long history of giving back, we have decided to open source the crowdfunding platform that got us here. Please send questions, comments, or concerns to [hello@lockitron.com](mailto:hello@lockitron.com)!

Selfstarter is a starting point. We made some specific choices with Selfstarter for Lockitron and we recommend you tailor it for your project:

* We use Amazon Payments for payments. You can use [Stripe](https://stripe.com) or [WePay](https://www.wepay.com/). We used Kickstarter's awesome ```amazon_flex_pay``` gem.
* We collect multi-use tokens from customers with Amazon Payments - this lets us collect payment information without charging the customer until we are ready to ship
* Selfstarter doesn't come with any authentication, administration, mailers or analytics tools. We recommend adding a basic set of these so that you can message backers and manage orders.
* There is a payment options component that allows you to define different packages or levels for people to puchase/support at.  You can turn it on and off with a configuration setting.

## Getting Started

*Note: This assumes you have Ruby 1.9.2 or later installed properly and have a basic working knowledge of how to use RubyGems*

First you'll need to fork and clone this repo

```bash
git clone https://github.com/lockitron/selfstarter.git
```

Let's get all our dependencies setup:
```bash
bundle install --without production
```

Now let's create the database:
```bash
rake db:migrate
```

If you're using the payment options component (use_payment_options = true in settings.yml) then need to seed some data for the options:
```bash
rake db:seed
```

Let's get it running:
```bash
rails s
```
