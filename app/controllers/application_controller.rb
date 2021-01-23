class ApplicationController < ActionController::API
  before_action :authenticate_administrator!
end
