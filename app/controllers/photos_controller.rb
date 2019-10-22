class PhotosController < ApplicationController
  def index
    @photos = current_user.photos
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.create(user_id: current_user.id)
    photo.image.attach(params[:photo][:image])
    redirect_to(:root, notice: 'photo uploaded!')
  end
end
