class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
    authorize @photo
    @gallery = Gallery.find(params[:gallery_id])
    @likes = @photo.likes

    @gallery_user = User.find(@gallery.user_id)
    @gallery_photos = Photo.where(gallery_id: @gallery.id)
    @photo_ids_array = []
    @gallery_photos.each do |ph|
      @photo_ids_array << ph.id
    end
    @current_photo_index = @photo_ids_array.index(@photo.id)
    @next_photo_index = @current_photo_index + 1
    @next_photo_id = @photo_ids_array.at(@next_photo_index)
    @previous_photo_index = @current_photo_index - 1
    @previous_photo_id = @photo_ids_array.at(@previous_photo_index)

    if user_signed_in?
      @like_status = Like.where(user_id: current_user.id, photo_id: @photo.id).any?
    else
      @like_status = true
    end
    @like = Like.new
    @comment = Comment.new
  end

  def create
    @photo = Photo.new(photo_params)
    @gallery = Gallery.find(params[:gallery_id])
    @photo.gallery_id = @gallery.id
    authorize @photo
    if @photo.save
      redirect_to gallery_path(@gallery), notice: "Photo successfully added to #{@gallery.name} gallery!"
    else
      redirect_to gallery_path(@gallery), notice: :unprocessable_entity
    end
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    redirect_to profile_path
  end

  private

  def photo_params
    params.require(:photo).permit(:address, :keyword, :photo)
  end
end





# <div class="photo-navigation">
# <% if @photo == @gallery_photos.last %>
#   <%= link_to gallery_photo_path(@gallery.id, @previous_photo_id) do %>
#     <i class="fa-solid fa-chevron-left"></i>
#   <% end %>
#   <p><%= @photo_ids_array.length - 1 %> more photos in this gallery</p>
# <% elsif @photo == @gallery_photos.first %>
#   <%= link_to gallery_photo_path(@gallery.id, @next_photo_id) do %>
#     <i class="fa-solid fa-chevron-right"></i>
#   <% end %>
#   <p><%= @photo_ids_array.length - 1 %> more photos in this gallery</p>
# <% elsif @photo_ids_array.length == 1 %>
#   <p>This is the only photo.</p>
# <% else %>
#   <div class="d-flex">
#     <%= link_to gallery_photo_path(@gallery.id, @previous_photo_id) do %>
#       <i class="fa-solid fa-chevron-left"></i>
#     <% end %>
#     <%= link_to gallery_photo_path(@gallery.id, @next_photo_id) do %>
#       <i class="fa-solid fa-chevron-right"></i>
#     <% end %>
#       <p><%= @photo_ids_array.length - 1 %> more photos in this gallery</p>
#   </div>
# <% end %>
# </div>




# <div class="photo-likes">
#         <p><%= @likes.length %>
#           <% if @like_status %>
#             <i class="fa-solid fa-heart"></i>
#           <% else %>
#             <%= simple_form_for [@gallery, @photo, @like] do |f| %>
#               <button type="submit" class="like-btn">
#                 <i class="fa-regular fa-heart"></i>
#               </button>
#             <% end %>
#           <% end %>
#           <% @likes.each do |like| %>
#             <%= cl_image_tag like.user.photo.key, height: 40, width: 40, radius: 20, crop: :fill %>
#           <% end %>
#         </p>
#       </div>
