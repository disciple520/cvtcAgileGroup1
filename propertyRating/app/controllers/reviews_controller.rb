class ReviewsController < ApplicationController
    before_action :findProperty
    before_action :authenticate_user!, :except => [:index, :show]
    
    def create
        @review = @property.reviews.create(params.require(:review).permit!)
        redirect_to @property
    end
    
    def show
        @review = @property.reviews.find(params[:id])
    end
    
    def destroy
        @review.destroy
        redirect_to @property
    end
    
    def findProperty
        @property = Property.find(params[:property_id])
    end
end
