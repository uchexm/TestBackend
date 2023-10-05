class Company < ApplicationRecord
  has_one_attached :icon
  before_create :generate_slug

  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\z/

  attr_accessor :filename
  validates_content_type :icon, attached: true, content_type: %i[image/jpeg image/png]

  def generate_slug
    self.slug = filename.parameterize if filename.present?
  end

  def icon_url
    "/public/icons/#{filename.parameterize}" if filename.present?
  end
end
