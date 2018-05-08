class Project < ApplicationRecord
  has_many :employees
  belongs_to :client
  has_many :tasks , dependent: :destroy
  has_many :expenses,dependent: :destroy
  has_one :invoice
end
