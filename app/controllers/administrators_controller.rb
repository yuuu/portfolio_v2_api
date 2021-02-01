# frozen_string_literal: true

class AdministratorsController < ApplicationController
  before_action :authenticate_administrator!

  def me
    @administrator = current_administrator
  end
end
