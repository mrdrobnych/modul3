class PagesController < ApplicationController
before_action :set_hotel

  def index
  	@rooms = @hotel.rooms
  end

  def contact
  	@contact = @hotel.contact
  end

  def show_room
    @room = Room.find_by(bed: params[:bed])
  end

  def gallery
    @rooms = @hotel.rooms
  end

  def set_hotel
  	@hotel = Hotel.find_by(id: 1)
  end
end
