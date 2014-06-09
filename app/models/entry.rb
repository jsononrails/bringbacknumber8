class Entry < ActiveRecord::Base
  self.table_name = 'entries'
  self.primary_keys = 'firstname', 'lastname', 'email'

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /@/, message: "please enter a valid email address" }
  validates :country, presence: true
  validates :comment, length: { maximum:  150 }

  geocoded_by :location
  after_validation :geocode, if: :country_or_provincestate_changed?
  
  private
    def location
      self.country + "," + self.provincestate
    end
    
    def country_or_provincestate_changed?
      country_changed? || provincestate_changed?
    end
end
