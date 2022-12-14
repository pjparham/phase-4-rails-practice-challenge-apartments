class TenantsController < ApplicationController

    before_action :set_tenant, only: [:show, :update, :destroy]

    def index
        render json: Tenant.all
    end

    def show
        render json: @tenant
    end

    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant
    end

    def update
        @tenant.update!(tenant_params)
        render json: @tenant
    end

    def destroy
        @tenant.destroy
        head :no_content
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end

    def set_tenant
        @tenant = Tenant.find(params[:id])
    end

    
end



