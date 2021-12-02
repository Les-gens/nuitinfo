class StoriesController < ApplicationController
  def index
   @stories = Story.order(:date)
  end
 end
 