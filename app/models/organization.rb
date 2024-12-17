require 'json'
require 'open-uri'

class Organization < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :messages
  has_many :tasks
  has_many :members
  has_many :users, through: :members

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def meteo
    url = "https://api.openweathermap.org/data/2.5/weather?lat=#{self.latitude}&lon=#{self.longitude}&appid=#{ENV['OPENWEATHER_MAP_API']}&units=metric"
    meteo_serialized = URI.parse(url).read
    meteo = JSON.parse(meteo_serialized)
    icon = meteo['weather'].first['icon']

    {temp: meteo['main']['temp'], icon: "https://openweathermap.org/img/w/#{icon}.png"}

  end
end
