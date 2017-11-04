module Seeds
  # seed all country data
  class Countries
    def self.seed_countries
      north_america
    end

    def self.canada
      Country.where(name: 'Canada').first_or_create!
    end

    def self.north_america
      canada
    end

    private_class_method :canada, :north_america
  end
end