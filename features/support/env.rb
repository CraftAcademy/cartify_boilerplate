require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'
ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end
Cucumber::Rails::Database.javascript_strategy = :truncation

Chromedriver.set_version '2.36'

chrome_options = %w(no-sandbox disable-popup-blocking disable-infobars auto-open-devtools-for-tabs)
# chrome_options << 'headless' 

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: chrome_options
  )
  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end

Capybara.server = :puma
Capybara.javascript_driver = :chrome

World(FactoryBot::Syntax::Methods)