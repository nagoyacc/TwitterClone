class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :update, :destroy]
  def index
    @posts = Post.all.order(id: "DESC")
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to posts_path, notice: "投稿完了"
        else
          render :new
        end
      end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice:"削除しました！"
  end

  def confirm
    @post = Post.new(post_params)
    render :new if @post.invalid?
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_posts
    @post = Post.find(params[:id])
  end
end