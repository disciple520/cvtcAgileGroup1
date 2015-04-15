class ReviewsController < ApplicationController
    def create
        @property = Property.find(params[:property_id])
        @review = @property.reviews.create(params.require(:review).permit!)
        redirect_to @property
    end
    
    def destroy
        @property = Property.find(params[:property_id])
        @review = @property.reviews.find(params[:id])
        @review.destroy
        redirect_to @property
    end
end
