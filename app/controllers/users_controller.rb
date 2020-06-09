class UsersController < ApplicationController
    def show 
    @user = User.all;
    render json: {status: 'SUCCESS', message: 'loaded user', body:@user},status: :ok
    end 
end
