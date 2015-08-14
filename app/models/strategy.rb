class Strategy < ActiveRecord::Base
  belongs_to :user
  has_many :indicators, dependent: :destroy

  accepts_nested_attributes_for :indicators, reject_if: :all_blank, allow_destroy: true

  CLASSIFICATIONS = ["crossover", "momentum", "threshold"]
end
