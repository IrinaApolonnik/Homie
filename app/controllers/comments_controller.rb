class CommentsController < ApplicationController
    def create
      @collection = Collection.find(params[:collection_id])
      @comment = @collection.comments.create(params[:comment].permit(:commenter, :body))
      redirect_to collection_path(@collection)
    end
  
    def destroy
      @collection = Collection.find(params[:collection_id])
      @comment = @collection.comments.find(params[:id])
      @comment.destroy
      redirect_to collection_path(@collection)
    end
  end