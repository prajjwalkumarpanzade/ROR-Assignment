class User < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_no, presence: true, uniqueness: true, format: { with: /\A[0-9]+\z/, message: "Integer only." } 
  validates :role, presence: true, inclusion: { in: %w(user teacher librarian), message: "%{value} is not a valid role" }
  before_validation :normalize_role,  on: :create 
  after_save :welcome
  has_many :transactions
  
  private
  def welcome
    puts "Welcome #{self.name} to the Library Management System"
  end
  
  def normalize_role
    self.role = role.downcase
  end
end
