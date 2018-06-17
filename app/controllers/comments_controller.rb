class CommentsController < ApplicationController
  def create
    @comment = Comment.new
    @comment.content = params[:input_content]
    @comment.article_id = params[:article_id]
    @comment.save
    
    redirect_to "/articles/#{@comment.article_id}"
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    
    redirect_to "/articles/#{@comment.article_id}"
  end
  
end
