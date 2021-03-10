class TweetsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show

  end


end
