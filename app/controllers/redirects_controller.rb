class RedirectsController < ApplicationController

  def show
    link = Link.find_by(slug: params[:slug])
    link.increment_clicks
    redirect_to link.source_url
  end

end
