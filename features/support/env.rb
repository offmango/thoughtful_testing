require 'rubygems'
require 'spork'

Spork.prefork do
	require 'cucumber/rails'
	require 'capybara/rspec'
	Capybara.default_selector = :css
	ActionController::Base.allow_rescue = false

	# Keep if you need to persist in a database; otherwise, delete what follows
	begin
	  	DatabaseCleaner.strategy = :transaction
		rescue NameError
	  	raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
	end
	Cucumber::Rails::Database.javascript_strategy = :truncation

end

Spork.each_run do

end


