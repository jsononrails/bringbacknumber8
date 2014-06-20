class PetitionController < ApplicationController
  def index
     @entry = Entry.new
     @petitionCount = Entry.count
     
     rand_id = rand(Entry.count)
     @randomComments = Entry.select('comment, firstname, lastname, country').where("comment != '' and show = true").limit(25).order("RANDOM()")
  end

  def create

    @entry = Entry.new(entry_params)
    @petitionCount = Entry.count
    
    if verify_recaptcha(model: @entry, message: "Word verification is incorrect, please try again.") && @entry.save
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
