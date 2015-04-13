class CommentsController < ApplicationController
    def create
        @property = Property.find(params[:property_id])
        @comment = @property.comments.create(params.require(:comment).permit!)
        redirect_to @property
    end
    
    def destroy
        @property = Property.find(params[:property_id])
        @comment = @property.comments.find(params[:id])
        @comment.destroy
        redirect_to @property
    end
end
