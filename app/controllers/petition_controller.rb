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
      flash[:notice] = "Thank you for your support and signing the petition!"
      redirect_to root_path anchor: "petition"
    else
      @anchor = "petition"
      flash[:notice] = nil
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
