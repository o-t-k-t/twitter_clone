class TweetsController < ApplicationController
  before_action :fetch_tweet, only: [:edit, :update, :destroy]
  
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path, notice: 'つぶやきました'
    else
      render 'new'
    end 
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to tweets_path, notice: 'ツイートを更新しました'
    else 
      render 'edit'
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: 'つぶやきを削除しました'
  end
  
  private
  
  def fetch_tweet
    @tweet = Tweet.find(params[:id])
  end
  
  def tweet_params
    params.require(:tweet).permit(:content)
    # 直近不要だが、パラメータ増加時向けに実装
  end
end
