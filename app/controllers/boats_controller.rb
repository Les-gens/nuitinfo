class BoatsController < ApplicationController
 def index
  @boats = Boat.all
  @stories = Story.all
 end
end
