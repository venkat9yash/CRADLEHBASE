class Attributes < ActiveRecord::Base
  belongs_to :datamodels
  belongs_to :datamodules
  has_many :attributes
end
