module Seeds
  # seeds all province data
  class Provinces
    def self.seed_provinces
      provinces
      territories
    end

    def self.alberta
      Province.where(name: 'Alberta').first_or_create!(
        pst: 0, gst: 0.05, hst: 0
      )
    end

    def self.british_columbia
      Province.where(name: 'British Columbia').first_or_create!(
        pst: 0, gst: 0, hst: 0.12
      )
    end

    def self.manitoba
      Province.where(name: 'Manitoba').first_or_create!(
        pst: 0.07, gst: 0.05, hst: 0
      )
    end

    def self.new_brunswick
      Province.where(name: 'New Brunswick').first_or_create!(
        pst: 0, gst: 0, hst: 0.13
      )
    end

    def self.newfoundland_labrador
      Province.where(name: 'Newfoundland and Labrador').first_or_create!(
        pst: 0, gst: 0, hst: 0.13
      )
    end

    def self.northwest_territories
      Province.where(name: 'Northwest Territories').first_or_create!(
        pst: 0, gst: 0.05, hst: 0
      )
    end

    def self.nova_scotia
      Province.where(name: 'Nova Scotia').first_or_create!(
        pst: 0, gst: 0, hst: 0.15
      )
    end

    def self.nunavut
      Province.where(name: 'Nunavut').first_or_create!(
        pst: 0, gst: 0.05, hst: 0
      )
    end

    def self.ontario
      Province.where(name: 'Ontario').first_or_create!(
        pst: 0, gst: 0, hst: 0.13
      )
    end

    def self.prince_edward_island
      Province.where(name: 'Prince Edward Island').first_or_create!(
        pst: 0.1, gst: 0.05, hst: 0
      )
    end

    def self.quebec
      Province.where(name: 'Quebec').first_or_create!(
        pst: 0.075, gst: 0.05, hst: 0
      )
    end

    def self.saskatchewan
      Province.where(name: 'Saskatchewan').first_or_create!(
        pst: 0.05, gst: 0.05, hst: 0
      )
    end

    def self.yukon
      Province.where(name: 'Yukon').first_or_create!(
        pst: 0, gst: 0.05, hst: 0
      )
    end

    def self.provinces
      alberta
      british_columbia
      manitoba
      new_brunswick
      newfoundland_labrador
      nova_scotia
      ontario
      prince_edward_island
      quebec
      saskatchewan
    end

    def self.territories
      northwest_territories
      nunavut
      yukon
    end

    private_class_method :alberta, :british_columbia, :manitoba,
                         :new_brunswick, :nova_scotia, :nunavut,
                         :ontario, :quebec, :saskatchewan,
                         :newfoundland_labrador, :yukon,
                         :northwest_territories, :provinces,
                         :territories, :prince_edward_island
  end
end