class Link < ApplicationRecord
  validates :source_url, presence: true
  validates :slug, presence: true

  before_validation :generate_slug, on: :create

  # Because of concurrent request we may end up in a race condition for the
  # number of clicks
  def increment_clicks
    self.with_lock do
      self.clicks += 1
      self.save
    end
  end

  def generate_slug
    begin
      self.slug = SecureRandom.hex(3)
    end while self.class.exists?(slug: slug)
  end

end
