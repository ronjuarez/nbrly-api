class UsersController < ApplicationController
    def index
        @user = User.all;
        render json: {status: 'SUCCESS', message: 'loaded user', body:@user},status: :ok
    end
    
    def show 
   
    end 

    def update
    @user = User.find params[:id]
    @user.update(deliveries: params[:user][:deliveries])
    @user.update(points: params[:user][:points])
    render json: {status: 'SUCCESS', message: 'loaded ARs', body:@user},status: :ok
    end

end
