class HomeController < ApplicationController
before_action :require_user, only: [:index, :feed, :show]

  def feed  		
		@posts = Post.all.order(created_at: :desc)
		 @post = Post.new
		 
		 respond_to do |format|
    format.html
    format.json
  end
	end
	
	
	def show
  @post = Post.find(params[:id]) 
end
	
	

  def new
    @post = Post.new
  end
  
  def create 
  @post = Post.new(post_params) 
  @post.user_id = current_user.id
  @post.user.first_name = current_user.first_name
  @post.user.last_name = current_user.last_name
  
  if @post.save 
    redirect_to '/' 
  else 
    render 'new' 
  end 
end
  
  def upvote 
  @post = Post.find(params[:id])
  @post.upvote_by current_user
  redirect_to :back
end  

def downvote
  @post = Post.find(params[:id])
  @post.downvote_by current_user
  redirect_to :back
end
  
 def update
    @post.update_attributes(post_params)
  end 
  
  
   
  
  private
  	def post_params
      
      params.require(:post).permit(:content, :user_id, :first_name, :last_name)
      
    end
end
