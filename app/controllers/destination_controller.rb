class DestinationController < ApplicationController
  def index
    @dests = Destination.find(:all)
  end
end
