class CountryController < ApplicationController

before_action :require_user, only: [:index, :country]


  def country
  end
end
