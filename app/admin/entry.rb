ActiveAdmin.register Entry do
  menu label: "Petition Signatures"
  filter :country
  filter :provincestate
  filter :comment
  filter :show
  filter :created_at
  config.per_page = 25
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
  index title: "Petition Signatures" do
    column "First name", :firstname
    column "Last name", :lastname
    column :email
    column "Province/State", :provincestate
    column :country
    column :show
    column :comment
    column :latitude
    column :longitude
    column "Signed", :created_at
  end
end
