class Location
  # self.attr_accessor(:name, :wind_speed, :temp, :feels_like, :cloud_cover, :zip_code)

  @@all = []

  def initialize(hash)
    # call attr_accessor in here
    hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end
    @@all << self
    # self.all << self
  end

  def self.all
    @@all
  end
  # way to check if we have already requested that location
  def self.find_by_zip(zip)
    self.all.find do |loc|
      loc.zip_code == zip
    end
  end
end
