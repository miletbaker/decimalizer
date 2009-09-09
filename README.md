Decimalizer
===========

Create virtual attributes on ActiveRecord models for accessing money values stored in pence/cents as an int as decimals. Rails validation compatible.

Installation
============

Rails 2.1 or greater
--------------------

To install the gem, Rails 2.1 or later, add the gem.config line in environment.rb as follows

	Rails::Initializer.run do |config|
	...
	  	config.gem "miletbaker-decimalizer", :lib => "decimalizer", :source => "http://gems.github.com"
	...
	end
	
then

	sudo rake gems:install

Earlier versions of Rails and other Ruby frameworks
----------------------------------------------

To install the gem

	gem sources -a http://gems.github.com
	sudo gem install miletbaker-decimalizer

To install as a plugin (Rails)

	cd into your Rails root folder
	script/plugin install git://github.com/miletbaker/decimalizer.git
	
Then require the library where needed, i.e. in environment.rb in older rails

	require 'decimalizer'

Example
=======
Just include Decimalizer in your model (where required)

	class MyModel < ActiveRecord::Base
		include Decimalizer
		decimalize :price # Monetary amount stored in pence / cents
	
	end

Then you will be able to access price as a decimal via the generated virtual attributes

	m = MyModel.new
	m.price = 2300
	m.price_as_decimal	# 23.00
	
You can pass in the value from a view

	m = MyModel.new({price_as_decimal => "45.99"})
	m.price 			# 4599

You can also use this virtual attribute with ActiveRecord validations, i.e.

	class MyModel < ActiveRecord::Base
		...
		validates_numericality_of :price_as_decimal, :message => "is not a valid price"
		...
	end


Copyright (c) 2009 Go Tripod Ltd, released under the MIT license
