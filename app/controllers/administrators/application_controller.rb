# frozen_string_literal: true

class Administrators::ApplicationController < ActionController::API
  before_action :authenticate_administrator!
end
