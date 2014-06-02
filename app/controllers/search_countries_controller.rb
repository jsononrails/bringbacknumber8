class SearchCountriesController < ApplicationController
  def index
    render json: SearchCountry.countries_for(params[:term])
  end
end
