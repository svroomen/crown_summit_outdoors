module Seeds
  # seeds all categories
  class Categories
    def self.seed_categories
      # realistically, these methods would be the parent
      # categories, and the methods that are generating
      # the categories right now would be sub categories
      # however time is limited so we are going to stay
      # with this, even if its not very realistic. You
      # would want the parent category for viewing all items
      # in a category, and subcategories for more specific items
      # in it, oh well, this is only a demo for code practice
      clothing
      footwear
      accessories
    end

    def self.hoodies
      Category.where(name: Category::HOODIES).first_or_create!
    end

    def self.sweaters
      Category.where(name: Category::SWEATERS).first_or_create!
    end

    def self.tops
      Category.where(name: Category::TOPS).first_or_create!
    end

    def self.shorts
      Category.where(name: Category::SHORTS).first_or_create!
    end

    def self.pants_and_tights
      Category.where(name: Category::PANTS_AND_TIGHTS).first_or_create!
    end

    def self.underwear_and_baselayer
      Category.where(name: Category::UNDERWEAR_AND_BASELAYER).first_or_create!
    end

    def self.hiking_boots
      Category.where(name: Category::HIKING_BOOTS).first_or_create!
    end

    def self.winter_boots
      Category.where(name: Category::WINTER_BOOTS).first_or_create!
    end

    def self.hiking_shoes
      Category.where(name: Category::HIKING_SHOES).first_or_create!
    end

    def self.running_shoes
      Category.where(name: Category::RUNNING_SHOES).first_or_create!
    end

    def self.winter_gloves_and_mitts
      Category.where(name: Category::WINTER_GLOVES_AND_MITTS).first_or_create!
    end

    def self.toques_and_balaclavas
      Category.where(name: Category::TOQUES_AND_BALACLAVAS).first_or_create!
    end

    def self.hats_and_caps
      Category.where(name: Category::HATS_AND_CAPS).first_or_create!
    end

    def self.clothing
      hoodies
      sweaters
      tops
      shorts
      pants_and_tights
      underwear_and_baselayer
    end

    def self.footwear
      hiking_boots
      winter_boots
      hiking_shoes
      running_shoes
    end

    def self.accessories
      winter_gloves_and_mitts
      toques_and_balaclavas
      hats_and_caps
    end

    private_class_method :clothing, :footwear, :hoodies,
                         :sweaters, :tops, :shorts,
                         :pants_and_tights, :underwear_and_baselayer,
                         :hiking_boots, :winter_boots, :hiking_shoes,
                         :running_shoes, :accessories, :hats_and_caps,
                         :toques_and_balaclavas,
                         :winter_gloves_and_mitts
  end
end