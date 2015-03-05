class API::V0::PublishersController < API::BaseController
  skip_filter :authenticate

  def ad
    @publisher = Publisher.find(params[:id])

    respond_to do |format|
      format.js
    end
  end
end
