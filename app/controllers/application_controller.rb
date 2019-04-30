class ApplicationController < ActionController::Base
  helper Cartify::Engine.helpers
  include Cartify::CurrentSession
end
