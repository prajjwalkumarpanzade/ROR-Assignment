class Book < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :quantity, format: { with: /\A[0-9]+\z/, message: "Integer only." }
  has_many :transactions
end
