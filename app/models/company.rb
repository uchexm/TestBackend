class Company < ApplicationRecord
  has_one_attached :icon

  before_create :slugify

  def slugify
    self.slug = icon.filename.to_s.parameterize
  end

  # Define a method to generate the image URL
  def icon_url
    if icon.attached?
      Rails.application.routes.url_helpers.rails_blob_url(icon, only_path: true)
    else
      # Return a default URL or handle the case when the icon is not attached
      # For example, you can return a placeholder image URL
      # Replace 'placeholder_url' with the actual URL you want to use
      'placeholder_url'
    end
  end
end
