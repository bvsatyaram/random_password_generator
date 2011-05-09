RandomPasswordGenerator
=============

`RandomPasswordGenerator` gem is the ultimate random password generator. It is highly customizable.
Special characters can be skipped from the password. TO make th password easily readable and less confusing,
we can also skip commonly confused characters. To put in a nut shell, `RandomPasswordGenerator` is all that you need for random password generation, what ever be your need.

Installation
------------

    gem install random_password_generator

Usage
-----

    require 'rubygems'
    require 'random_password_generator'

You may generate a random password by running:

    RandomPasswordGenerator.generate

The default length of the generated password is `8`.
You may generate a random password of different length, say 10, by running:

    RandomPasswordGenerator.generate(10)

The following options can be passed to the `generate` method as arguments:

- :skip_lower_case => Skips lower case alphabets if set to true
- :skip_upper_case => Skips upper case alphabets if set to true
- :skip_numbers => Skips numbers if set to true
- :skip_symbols => Skips symbols if set to true
- :dont_exclude_unfrieldly_chars => Does not skip commonly mistaken characters if set to true (i, I, o, O, 0, 1, l, ! are considered to be mistaken characters)
- :skip_url_unsafe => Skips URL reserved and unfriendly characters if set to true

So, you may generate a 12 character long random password containing only upper case character by running:

    RandomPasswordGenerator.generate(12, :skip_upper_case => true,
                                      :skip_numbers => true,
                                      :skip_symbols => true)

Author
------

B V Satyaram <[bvsatyaram.com](http://bvsatyaram.com)>
