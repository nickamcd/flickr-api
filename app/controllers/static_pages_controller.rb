class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new ENV['flickr_api_key'], ENV['flickr_api_secret']

    if params[:user]
      begin
        @photos = flickr.people.getPhotos(user_id: params[:user])
      rescue Flickr::FailedResponse
        flash.now[:alert] = 'Unable to find that user\'s photos'
      end
    else
      render :index
    end

  end

end
