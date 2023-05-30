class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    layout :layout

    def layout
        if current_user != nil
            @layout = "application"
        else
            @layout = "applicationlogin"
      
        end
    end
end