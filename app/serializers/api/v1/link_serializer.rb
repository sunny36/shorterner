class Api::V1::LinkSerializer < Api::V1::BaseSerializer
  attributes :id, :source_url, :slug, :clicks, :url


  def url
    ENV["DEFAULT_HOST"] || "http://localhost:300/#{object.slug}"
  end
end
