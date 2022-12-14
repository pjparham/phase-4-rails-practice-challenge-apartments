class ApartmentsController < ApplicationController


    before_action :set_apartment, only: [:show, :update, :destroy]

    def index
        render json: Apartment.all
    end

    def show
        render json: @apartment
    end

    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment
    end

    def update
        @apartment.update!(apartment_params)
        render json: @apartment
    end

    def destroy
        @apartment.destroy
        head :no_content
    end

    private

    def apartment_params
        params.permit(:number)
    end

    def set_apartment
        @apartment = Apartment.find(params[:id])
    end

    # def render_not_found_response(exception)
    # render json: { error: "#{exception.model} not found" }, status: :not_found
    # end

    # def render_unprocessable_entity_response(exception)
    # render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    # end
end
