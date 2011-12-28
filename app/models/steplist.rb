class Steplist < ActiveRecord::Base
  belongs_to :user
  has_many :steps
end
