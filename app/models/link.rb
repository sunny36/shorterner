class Link < ApplicationRecord
  validates :source_url, presence: true
  validates :slug, presence: true,

  before_validation :generate_slug, on: :create

  def generate_slug
    begin
      self.slug = SecureRandom.hex(3)
    end while self.class.exists?(slug: slug)
  end

end
