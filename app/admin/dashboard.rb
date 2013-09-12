ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc { I18n.t("active_admin.dashboard") }

  content :title => proc { I18n.t("active_admin.dashboard") } do

    section "Recently updated content" do
      table_for Version.order('id desc').limit(20) do
        column "Item" do |v|
          v.item_type.underscore.humanize
        end
        column "Type" do |v|
          v.event
        end
        column "Changes" do |v|
          v.object
        end
        column "When" do |v|
          "#{time_ago_in_words v.created_at.to_s} ago"
        end
        column "User" do |v|
          link_to User.find(v.whodunnit).full_name, admin_user_path(User.find(v.whodunnit))
        end
      end
    end

  end


end
