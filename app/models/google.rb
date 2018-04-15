class Google < ApplicationRecord
  def self.information(token)
    response = HTTParty.get('https://www.googleapis.com/oauth2/v3/tokeninfo?id_token='+token)
    return response.body
  end
end