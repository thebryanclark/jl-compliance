class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
    @back_target = polymorphic_path(@photo.photoable)
    @suppress_footer = true
  end

  def create
    Photo.create!(photo_params)
    render nothing: true, status: :no_content
  end

  private

  ALLOWED_PARAMS = ['image']

  def photo_params
    @photo_params ||= params.dup.keep_if { |k, v| ALLOWED_PARAMS.include? k }
  end
end