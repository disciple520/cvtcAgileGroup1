class CommentsController < ApplicationController
    before_action :findProperty
    
    def create
        @review = @property.reviews.find(params[:review_id])
        @comment = @review.comments.create(params.require(:comment).permit!)
        redirect_to :back
    end
    
    def show
        @comment = @review.comments.find(params[:id])
    end
    
    def findProperty
        @property = Property.find(params[:property_id])
    end
end
