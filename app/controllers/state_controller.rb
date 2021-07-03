class StateController < ApplicationController

before_action :require_user, only: [:index, :state]

  def state
  end
end
