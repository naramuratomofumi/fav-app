class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
  end

  def create
  end

  private

  def post_params
    params.require(:post).permit(:title).merge(user_id: current_user.id)
  end
end
