class Category < ApplicationRecord
  has_many :products, inverse_of: :category, dependent: :restrict_with_error

  validates_presence_of :name
  validates_uniqueness_of :name

  # category names
  HOODIES = 'Hoodies'.freeze
  SWEATERS = 'Sweaters'.freeze
  TOPS = 'Tops'.freeze
  SHORTS = 'Shorts'.freeze
  PANTS_AND_TIGHTS = 'Pants and Tights'.freeze
  UNDERWEAR_AND_BASELAYER = 'Underwear and Baselayer'.freeze
  HIKING_BOOTS = 'Hiking Boots'.freeze
  WINTER_BOOTS = 'Winter Boots'.freeze
  HIKING_SHOES = 'Hiking Shoes'.freeze
  RUNNING_SHOES = 'Running Shoes'.freeze
  WINTER_GLOVES_AND_MITTS = 'Winter Gloves & Mitts'.freeze
  TOQUES_AND_BALACLAVAS = 'Toques & Balaclavas'.freeze
  HATS_AND_CAPS = 'Hats & Caps'.freeze
end
