class RequestsController < ApplicationController
    def index
        @requests = AssistanceRequest.all
        render json: {status: 'SUCCESS', message: 'loaded ARs', body:@requests},status: :ok
    end 

    def show
        @request = AssistanceRequest.find params[:id]
        render json: {status: 'SUCCESS', message: 'loaded ARs', body:@request},status: :ok
    end

    
      def destroy
        @request = AssistanceRequest.find params[:id]
        @request.destroy
        @requests = AssistanceRequest.all;
        render json: {status: 'SUCCESS', message: 'AR deleted', body:@requests}, status: :ok
      end
    
end
