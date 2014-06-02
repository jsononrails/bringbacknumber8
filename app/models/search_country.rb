class SearchCountry < ActiveRecord::Base
  
  def self.countries_for(prefix)
    countries = Entry.where("lower(country) like ?", "#{prefix.downcase}_%")
    .select('country')
    .order("country asc")
    .limit(10).pluck(:country)
  end
  
end
