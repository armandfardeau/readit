class StoriesController < ApplicationController
  def index
    @story = Story.order('RANDOM()').first
    @count = Story.count
  end
  def new
    @story = Story.new
  end
end
