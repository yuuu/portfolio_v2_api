class AdministratorsController < ApplicationController
  def me
    @administrator = current_administrator
  end
end
