ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    panel "Recent Returns" do
      ul do
        Return.last(10).map do |return_item|
          li link_to(return_item.item_number, admin_return_path(return_item))
        end
      end
    end
    panel "Recent Approved RMAs" do
      ul do
        Return.sort_rmas.last(25).map do |return_item|
          if return_item.rma_number != nil
            li link_to(return_item.rma_number, admin_return_path(return_item))
          end
        end
      end
    end
    panel "Recent Users" do
      ul do
        User.last(10).map do |user|
          li link_to(user.store_number, admin_user_path(user))
        end
      end
    end
  end



    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Returns" do
    #       ul do
    #         Return.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end

end
