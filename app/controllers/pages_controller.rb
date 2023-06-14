class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def show
    @user = User.find(params[:id])
    @galleries = Gallery.all
    @my_galleries = Gallery.where(user_id: params[:id])
  end

  def search
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
      # raise
    end
  end
end
