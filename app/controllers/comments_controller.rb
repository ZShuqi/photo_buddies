class CommentsController < ApplicationController
  # def index
  #   @comments = policy_scope(Comment)
  # end

  def create
    set_photo
    authorize @photo
    @comment = Comment.new(comment_params)
    @comment.photo = @photo
    @comment.user = current_user
    @gallery = @photo.gallery

    respond_to do |format|
      if @comment.save
        format.html { redirect_to gallery_photo_path(@gallery, @photo) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { redirect_to gallery_photo_path(@gallery, @photo), alert: 'Something went wrong when creating comment...' }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to comments_path, status: :see_other
  end

  private

  def set_photo
    @photo = Photo.find(params[:photo_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
