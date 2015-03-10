class Ad < ActiveRecord::Base

  def image
    if width == 728 && height == 90
      "http://cstore.johnsonville.com/currentads/trade/electronic/728x90-banner-ad/thumb/JVE_728x90.jpg"
    elsif width == 300 && height == 600
      "http://cstore.johnsonville.com/currentads/trade/electronic/300x600-banner-ad/thumb/JVE_300x600.jpg"
    else
      "http://www.adsthatwow.com/image/Audi_expandable.jpg"
    end
  end
end
