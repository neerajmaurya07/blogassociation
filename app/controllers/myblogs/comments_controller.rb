class Myblogs::CommentsController < ApplicationController
   before_action :set_commentable
	private

	def set_commentable
		@commentable = Myblog.find(params[:myblog_id])
	end
end
