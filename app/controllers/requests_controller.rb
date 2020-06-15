class RequestsController < ApplicationController
    def index
        @requests = AssistanceRequest.where(volunteer_id: nil).order("complete_by")
        render json: {status: 'SUCCESS', message: 'loaded ARs', body:@requests},status: :ok
    end 

    def create
       
      @requests = AssistanceRequest.create!(requests_params)
      @requests.save
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

    def update
      @request = AssistanceRequest.find params[:id]
      @@request.update(volunteer_completed_task: params[:request][:volunteer_completed_task], volunteer_id: params[:request][:volunteer_id])
      render json: {status: 'SUCCESS', message: 'loaded ARs', body:@request},status: :ok
    end
    
    def destroy
      @request.destroy
      @requests = AssistanceRequest.all;
      render json: {status: 'SUCCESS', message: 'AR deleted', body:@requests}, status: :ok
    end
    
    private

    def requests_params
      params.require(:requests).permit!
    end 

    def requests
      @requests ||= AssistanceRequest.find(params[:id])
    end 

    
end
