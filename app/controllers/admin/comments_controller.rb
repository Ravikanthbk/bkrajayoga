class Admin::CommentsController < ApplicationController
  before_filter :authorize
  layout "admin"

  def destroy
    comment = Comment.find(params[:id])
    flash[:delete_notice] = "Comment deleted."
    comment.destroy

    if comment.destroy
      redirect_to [:admin, comment.source]
    end
  end
end
