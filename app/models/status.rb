class Status < ApplicationRecord
  has_many :orders, inverse_of: :status, dependent: :restrict_with_error

  validates_presence_of :title, :description
  validates_uniqueness_of :title

  def self.pending
    find_by(title: 'Pending')
  end

  def self.paid
    find_by(title: 'Paid')
  end

  def self.processing
    find_by(title: 'Processing')
  end

  def self.shipped
    find_by(title: 'Shipped')
  end

  def self.delivered
    find_by(title: 'Delivered')
  end
end
