class PagesController < ApplicationController

  def home
  end

  def show
    @user = User.find(params[:id])
    @galleries = Gallery.all
  end
  def search
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
      # raise
    end
  end
end
