class Api::V1::LinksController < Api::V1::BaseController

  def index
    links = Link.all.to_a
     render json: links, status: :ok, each_serializer: Api::V1::LinkSerializer
  end

  def show
    link = Link.find(params[:id])
    render(json: Api::V1::LinkSerializer.new(link).to_json)
  end

  def create
    link = Link.new(create_params)
    return api_error(status: 422, errors: link.errors) unless link.valid?
    link.save!
    render(
      json: Api::V1::LinkSerializer.new(link).to_json,
      status: :ok,
    )
  end

  def create_params
    params.require(:link).permit(:source_url)
  end
end
