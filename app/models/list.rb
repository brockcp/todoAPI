class List < ApplicationRecord

  belongs_to :user, required: false # for curl
  has_many :items, dependent: :destroy

end
