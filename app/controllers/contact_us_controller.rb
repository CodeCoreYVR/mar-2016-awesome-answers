class ContactUsController < ApplicationController
  # you can specify a different layout than the default by adding a line:
  # layout "special"

  def new
    # Rails.logger.info ">>>>>>>>>>>>"
    # Rails.logger.info request.path
    # Rails.logger.info ">>>>>>>>>>>>"
    render :new, layout: "special"
  end

  def create
    @name = params[:full_name]
  end
end
