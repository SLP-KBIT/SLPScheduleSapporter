class PhotosController < ApplicationController
  def create
    @photo = current_user.photos.build(photo_params)
    @photo.save!
    redirect_to event_path(@photo.event)
  end

  private
  def photo_params
    params.require(:photo).permit(:event_id, :user_id, :image)
  end
end
