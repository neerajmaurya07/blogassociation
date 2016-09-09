class Movies::CommentsController < ApplicationController
 before_action :set_commentable
	private

	def set_commentable
		@commentable = Movie.find(params[:movie_id])
	end 
end
