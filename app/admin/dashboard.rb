ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        section "Recent Petition Signatures" do
        table_for Entry.order("created_at desc").limit(20) do
          column "First name", :firstname
          column "Last name", :lastname
          column :email
          column "Province/State", :provincestate
          column :country
          column :show
          column :comment
          column "Signed", :created_at
        end
        strong { link_to "View All Petition Entries", admin_entries_path }
      end
      end
    end
  end # content
end
