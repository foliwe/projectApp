class Project < ApplicationRecord
  belongs_to :client
  has_many :tasks , dependent: :destroy
  has_many :expenses,dependent: :destroy
end
