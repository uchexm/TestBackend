module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        companies = Company.all
        company_data = companies.map { |company| { id: company.id, icon_url: company.icon_url } }
        render json: company_data
      end

      # Other actions...

      private

      def company_params
        params.require(:company).permit(:icon)
      end
    end
  end
end
