class Company < ApplicationRecord
  ## has_one_attached :icon

  ## before_create :slugify

  def slugify
    self.slug = icon.filename.to_s.parameterize
  end
end