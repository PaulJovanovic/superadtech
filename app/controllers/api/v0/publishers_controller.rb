class API::V0::PublishersController < API::BaseController
  skip_filter :authenticate

  def ad
    @publisher = Publisher.find(params[:id])
    @ad = Ad.where(width: params[:width], height: params[:height]).last || Ad.where(width: 300, height: 250).last

    respond_to do |format|
      format.js
    end
  end
end
