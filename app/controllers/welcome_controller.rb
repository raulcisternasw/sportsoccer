class WelcomeController < ApplicationController
  before_action :set_slides, only: [:index]
  Path_slides_folder = 'app/assets/images/slides/*'

  def index
  end

  private
  def set_slides
    @images = {}
    index = 0
    Dir.glob(Path_slides_folder).map do |path|
      @images[index] =  "slides/#{ File.basename(path) }"
      index += 1
    end.reduce(&:+)
  end
end
