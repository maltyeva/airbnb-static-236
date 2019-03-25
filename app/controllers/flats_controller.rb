require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  def index
  end

  def show
    @id = params[:id].to_i

    @flat = @flats.select{ |flat| flat["id"] == @id }.first
  end

  def new

  end

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
