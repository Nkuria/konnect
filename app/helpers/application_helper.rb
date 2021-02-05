module ApplicationHelper
    def aside
        if current_user
            render 'layouts/aside_logged_in'
        else
            render 'layouts/aside_logged_out' 
        end
    end

    def navbar_logged_in
        if current_user
            render 'layouts/nav_logged_in'
        else
            render 'layouts/nav_logged_out'
        end
    end
end
