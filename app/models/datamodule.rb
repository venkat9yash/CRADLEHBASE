class Datamodule < ActiveRecord::Base
  has_many :datamodels
  belongs_to :attributes
end
