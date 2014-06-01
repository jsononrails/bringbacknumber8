class Entry < ActiveRecord::Base
  self.table_name = 'entries'
  self.primary_keys = 'firstname', 'lastname', 'email'

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /@/, message: "please enter a valid email address" }
  validates :country, presence: true
  
end
