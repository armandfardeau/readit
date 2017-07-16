class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @stories_sumbitted = @user.stories.limit(6).order('stories.id DESC')
    @stories_voted_on = @user.stories_voted_on.limit(6).order('votes.id DESC')
  end
end
