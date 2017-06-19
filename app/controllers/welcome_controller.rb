class WelcomeController < ApplicationController
  before_action :set_slides, only: [:index]
  Path_slides_folder = "public/slides"

  def index
  end

  private
  def set_slides
    @files = Dir.entries(Path_slides_folder).reject{ |entry| entry =~ /^\.{1,2}$/ }.sort
    @images = {}
    @indicators = []
    index = 0
    @files.each do |file|
      @images[index] = '/slides/' + file
      @indicators.push(index)
      index = index + 1;
    end
  end
end
