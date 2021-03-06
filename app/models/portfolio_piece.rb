class PortfolioPiece < ActiveRecord::Base
  has_many :portfolio_contributions
  has_many :contributors, :through => :portfolio_contributions

  has_many :images
  has_one :default_image, -> { where default: true }, class_name: 'Image'

  validates :name, presence: true

  paginates_per 6
end
