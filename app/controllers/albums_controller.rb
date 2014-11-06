class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
    @albums = @albums.search(params[:search]) if params[:search].present?

  end
  def create
    @album = Album.new(params.require(:album).permit(:name, :photo, :tag_list))
    if @album.save
      redirect_to root_path
    else
      render :new
    end
  end
end
