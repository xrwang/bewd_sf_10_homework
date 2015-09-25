class ReviewsController < ApplicationController

# /pictures/:picture_id/reviews #=> reviews#create
# /posts/:post_id/reviews #=> reviews#create
  def create
    if params[:song_id]
      @reviewable = Song.find(params[:song_id])
      artist_id = @reviewable.artist_id
    elsif params[:artist_id]
      @reviewable = Artist.find(params[:artist_id])
      artist_id = @reviewable.id
    end

    @review = @reviewable.reviews.create(review_params)
    redirect_to artist_path(artist_id)
  end

  def destroy
  end


# /pictures/:picture_id/reviews #=> reviews#create_from_picture
  # def create_from_picture
  #   @commentable = Picture.find(params[:picture_id])
  # end

# # /posts/:post_id/reviews #=> reviews#create_from_post
#   def create_from_post
#     @commentable = Post.find(params[:post_id])
#   end

private

def review_params
  params.require(:review).permit(:score, :body, :reviewer_name)
end



end
