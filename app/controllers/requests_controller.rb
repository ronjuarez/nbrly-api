class RequestsController < ApplicationController
    def index
        @requests = AssistanceRequest.all
        render json: {status: 'SUCCESS', message: 'loaded ARs', data:@requests},status: :ok
    end 

    def show
        @request = AssistanceRequest.find params[:id]
        render json: {status: 'SUCCESS', message: 'loaded ARs', data:@request},status: :ok
    end

    
      def destroy
        @request = AssistanceRequest.find params[:id]
        @request.destroy
        @requests = AssistanceRequest.all;
        render json: {status: 'SUCCESS', message: 'AR deleted', data:@requests}, status: :ok
      end
    
end