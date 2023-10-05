module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        companies = Company.all
        render json: companies.map { |company| company.as_json.merge(filename: company.filename) }
      end

      # Other actions...

      private

      def company_params
        params.require(:company).permit(:icon)
      end
    end
  end
end
