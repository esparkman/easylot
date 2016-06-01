class PhotosController < ApplicationController
  expose(:vehicle) { Vehicle.find(params[:vehicle_id]) }
  before_action :authenticate_user!, except: [:index, :show]

  def create
    add_more_photos(photos_params[:photos])
    flash[:error] = 'Failed uploading photos' unless vehicle.save
    redirect_to :back
  end

  def destroy
    remove_image_at_index(params[:id].to_i)
    flash[:error] = 'Failed deleting image' unless vehicle.save
    redirect_to :back
  end

  private

  def add_more_photos(new_photos)
    photos = vehicle.photos
    photos += new_photos
    vehicle.photos = photos
  end

  def remove_image_at_index(index)
    remain_photos = vehicle.photos # copy the array
    deleted_image = remain_photos.delete_at(index) # delete the target image
    deleted_image.try(:remove!) # delete image from S3
    vehicle.photos = remain_photos # re-assign back
  end

  def photos_params
    params.require(:vehicle).permit(photos: [])
  end
end
