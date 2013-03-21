class PhotosController < ApplicationController

def new

@photo = Photo.new
end

def create
photo = Photo.create(params[:photo])
  album = Album.find(params[:album_id]) #:album id was shoved into the new form so now we can find that object.
  album.photos << photo
  @photos =  album.photos
  end

def show
  album = Album.find(params[:id])
  @photos = album.photos
  end
end


#when page first loads , or when u create a photo. instances of the show page.

