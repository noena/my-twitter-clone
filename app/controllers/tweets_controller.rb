class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
     if @tweet.save
       redirect_to tweets_path
     else
       render :new
     end
  end

private
def tweet_params
  params.require(:tweet).permit(:body)
end


end
