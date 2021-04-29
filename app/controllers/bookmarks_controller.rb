class BookmarksController < ApplicationController
  def new
    @bookmark = bookmark.new
  end

  def create
    @bookmark = bookmark.new(bookmark_params)
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path
  end

  private

  def bookmark_params
    params.require(:list).permit(:comment)
  end
end
