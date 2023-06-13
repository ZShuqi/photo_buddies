class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def search
    @users = User.all
    @photos = Photos.all
    # implement multi-search
  end
end
