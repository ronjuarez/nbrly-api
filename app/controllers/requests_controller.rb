class RequestsController < ApplicationController
    def index
        @requests = AssistanceRequest.where(volunteer_id: nil).order("complete_by")
        render json: {status: 'SUCCESS', message: 'loaded ARs', body:@requests},status: :ok
    end 

    def create 
      @requests = AssistanceRequest.create!(requests_params)
      if @requests
        render json: @requests
      else
        render json: @requests.errors
      end
    end 


    def show
        @request = AssistanceRequest.find params[:id]
        render json: {status: 'SUCCESS', message: 'loaded ARs', body:@request},status: :ok
    end

    
    def destroy
      @request.destroy
      @requests = AssistanceRequest.all;
      render json: {status: 'SUCCESS', message: 'AR deleted', body:@requests}, status: :ok
    end
    
    private

    def requests_params
      params.permit(:delivery_address, :items, :completed_by, :reimbursement_type)
    end 

    def requests
      @requests ||= AssistanceRequest.find(params[:id])
    end 

    
end
