module Api
  module V1
    class CompaniesController < ApplicationController
      def index
        companies = Company.all

        # Use map to create a new array of company attributes with image_url and slug
        companies_with_image_urls = companies.map do |company|
          {
            slug: company.slug, # Include the slug or any other relevant attribute
            image_url: company.image_url
          }
        end

        render json: companies_with_image_urls
      end

      # Other actions...

      private

      def company_params
        params.require(:company).permit(:icon)
      end
    end
  end
end
