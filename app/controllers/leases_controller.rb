class LeasesController < ApplicationController

    before_action :set_lease, only: [:destroy]

    def create
        lease = Lease.create!(lease_params)
        render json: lease
    end

    def destroy
        @lease.destroy
        head :no_content
    end

    private

    def lease_params
        params.permit(:rent, :tenant_id, :apartment_id)
    end

    def set_lease
        @lease = Lease.find(params[:id])
    end
end

