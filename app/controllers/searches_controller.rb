class SearchesController < ApplicationController
  def search
  	
  end

  def foursquare
   @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = "WOXLKYVD1FBBCZKE2EEFWHJRB3MVVDEPKSD0SU1XNGJXRZUV"
      req.params['client_secret'] = "QXOSSW1QFAQ5S0T25FKWWSNU5V1LA0SQ3LGAJSRBVH3ABJVS"
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
  end
    render 'search'
  end
end
