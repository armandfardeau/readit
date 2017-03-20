class TempHomeController < ApplicationController
  def redirect
    redirect_to stories_path
  end
end
