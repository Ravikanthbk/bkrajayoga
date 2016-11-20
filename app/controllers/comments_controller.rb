class CommentsController < ApplicationController
  def create 
    @commentable = find_commentable  
    @comment = @commentable.comments.create(comment_params) 
    if @comment.save
      flash[:success] = "Successfully posted the comment."
    else
      flash[:warning] = "Please fill the form completly"
    end    
    redirect_to  @comment.source
  end  
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :email, :body)
    end

    def find_commentable  
      params.each do |name, value|  
        if name =~ /(.+)_id$/  
          return $1.classify.constantize.find(value)  
        end  
      end  
      nil  
    end 
end
