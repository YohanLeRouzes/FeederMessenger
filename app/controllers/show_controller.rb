class ShowController < ApplicationController
before_action :require_user, only: [:index, :show]

 def show
  @post = Post.find(params[:id])
end
end
