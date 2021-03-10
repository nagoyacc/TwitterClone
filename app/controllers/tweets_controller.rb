class TweetsController < ApplicationController
  before_action :set_tweets, only: [:show, :edit, :update, :destroy]
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
    @post = Post.new(tweet_params)
    if params[:back]
      render :new
    else
      if @post.save
        redirect_to tweets_path, notice: "投稿完了"
        else
          render :new
        end
      end
  end

  def update
    if @post.update(tweet_params)
      redirect_to tweets_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to tweets_path, notice:"削除しました！"
  end

  def confirm
    @post = Post.new(tweet_params)
    render :new if @post.invalid?
  end

  private
  def tweet_params
    params.require(:post).permit(:content)
  end

  def set_tweets
    @post = Post.find(params[:id])
  end
end
