class PagesController < ApplicationController

  def home
    @events = Event.all
    @photos = Photo.all
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

  def show
    @user = User.find(params[:id])
    @galleries = Gallery.all
    @my_galleries = Gallery.where(user_id: params[:id])
  end

  def search
    @users = User.all
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
      if params[:photos].present?
        @photo_results = @results.select do |result|
          result.searchable_type == "Photo"
        end
      end

      if params[:users].present?
        @user_results = @results.select do |result|
          result.searchable_type == "User"
        end
      end

      if params[:users].blank? && params[:photos].blank?
        @photo_results = @results.select do |result|
          result.searchable_type == "Photo"
        end
        @user_results = @results.select do |result|
          result.searchable_type == "User"
        end
      end
      # for now if no tag, all results. can also display nothing when no tag

      if params[:query].present? && @results.blank?
        @message = "Sorry, no results found."
      end
    else
      @message = "Run a search!"
    end
    # raise
  end
end
