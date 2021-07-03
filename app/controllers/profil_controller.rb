class ProfilController < ApplicationController
 before_action :require_user, only: [:profil]


def profil
 @posts = @posts = current_user.posts.order(created_at: :desc)
 @post = Post.new
end
end
	
