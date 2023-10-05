class Company < ApplicationRecord
  has_one_attached :icon

  ## before_create :slugify

  def slugify
    self.slug = icon.filename.to_s.parameterize
  end

  def image_url
    # Assuming 'slug' contains the filename of the image
    # Adjust the path to match your directory structure
    File.join('http://localhost:3001/public/icons', slug)
  end
end
