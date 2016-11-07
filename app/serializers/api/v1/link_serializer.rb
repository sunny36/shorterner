class Api::V1::LinkSerializer < Api::V1::BaseSerializer
  attributes :id, :source_url, :slug, :clicks
end
