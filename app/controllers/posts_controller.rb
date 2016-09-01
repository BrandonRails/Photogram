class PostsController < ApplicationController
  def index
  end
  
  def new
  	@post = Post.new
  end

  def create 
  	@user = User.create(user_params)
  end

  private

   def user_params
   	params.require(:user).permit(:avatar)
   end
end
