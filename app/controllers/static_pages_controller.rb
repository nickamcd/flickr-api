class StaticPagesController < ApplicationController
  require 'flickr'

  def index
   flickr = Flickr.new ENV['flickr_api_key'], ENV['flickr_api_secret']

   

  end

end
