class Ville < ActiveRecord::Base
  before_validation :geocode
  
  def meteo
    ForecastIO.forecast(self.latitude, self.longitude).currently
  end
  
  private
  def geocode
    places = Nominatim.search(self.nom).limit(1)
    place = places.first
    if place
      self.latitude = place.latitude
      self.longitude = place.longitude
    end
  end
  
end
