UrgentCY
========

UrgentCy is an open source platform for managing urgent surgical bookings.

It is hoped that it will help solve some of the big problems in managing urgent surgery, such as

 * Opaque bookings processes
 * Lack of ability to track how long people have been waiting
 * How to track current and trended urgent surgical demand

The project is heavily inspired by a project called Emergency Theatre Bookings System created at the Royal Melbourne Hospital

## Getting started

1. Clone the repository
2. Edit `database.yml` to set your preferred database names and credentials
3. Create the database `bundle exec rake db:create:all && bundle exec rake db:migrate`
4. You're good to go `rails s`

## Contributing

[![Code Climate](https://codeclimate.com/github/mfeckie/urgentcy.png)](https://codeclimate.com/github/mfeckie/urgentcy)
[![Build Status](https://travis-ci.org/mfeckie/urgentcy.png?branch=master)](https://travis-ci.org/mfeckie/urgentcy)


TBA