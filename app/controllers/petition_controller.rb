class PetitionController < ApplicationController
  def index
    
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    
    if @entry.save
      redirect_to root_path
    else
      render 'new'
    end    
  end
  
  private 
    def entry_params
      params.require(:entry).permit(
        :firstname, 
        :lastname, 
        :email, 
        :country, 
        :provincestate,
        :show)
    end
end
