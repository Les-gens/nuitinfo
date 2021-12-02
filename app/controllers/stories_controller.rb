class StoriesController < ApplicationController
  before_action :find_story, only: %i[show edit update destroy]
  def index
   @stories = Story.order(:date)
  end
  def new
    @Story=Story.new
  end
  def create
  end
  def find_story
    @story=Story.find(params[:id])
  end

 end
 