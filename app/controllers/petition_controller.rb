class PetitionController < ApplicationController
  def index
     @entry = Entry.new
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    
    if @entry.save
      redirect_to root_path
    else
      @anchor = "petition"
      render 'index'
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
        :comment,
        :show)
    end
end
