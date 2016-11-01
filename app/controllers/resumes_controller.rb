class ResumesController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])

    @handle = twitter.user("realDonaldTrump")
    @last_tweets = twitter.user_timeline("realDonaldTrump").last(5)
  end
end
