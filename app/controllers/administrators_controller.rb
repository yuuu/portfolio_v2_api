# frozen_string_literal: true

class AdministratorsController < ApplicationController
  def me
    @administrator = current_administrator
  end
end
