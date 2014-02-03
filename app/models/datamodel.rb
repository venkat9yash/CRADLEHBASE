class Datamodel < ActiveRecord::Base
  has_many :attributes
  has_many :datamodules
  belongs_to :datasources
end
