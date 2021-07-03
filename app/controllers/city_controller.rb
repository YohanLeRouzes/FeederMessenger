class CityController < ApplicationController

before_action :require_user, only: [:index, :city]

  def city
  end
end
