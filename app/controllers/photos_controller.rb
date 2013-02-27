class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
    @back_target = polymorphic_path(@photo.photoable)
    @suppress_footer = true
  end
end