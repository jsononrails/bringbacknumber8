class SearchCountry < ActiveRecord::Base
  
  def self.countries_for(prefix)
    countries = Entry.where("lower(country) like ?", "#{prefix.downcase}_%")
    .select('country')
    .distinct()
    .order("country asc")
    .limit(10).pluck(:country)
  end
  
end
