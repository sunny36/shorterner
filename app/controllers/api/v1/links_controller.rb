class Api::V1::LinksController < Api::V1::BaseController
  def show
    link = Link.find(params[:id])
    render(json: Api::V1::LinkSerializer.new(link).to_json)
  end
end
