class UserController < ApplicationController
   
    def list
        @user = User.all
    end

    def show
          @user = User.find(params[:id])
    end
   end

end