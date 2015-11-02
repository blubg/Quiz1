class SupportRequestsController < ApplicationController

    def index
      @support_requests = SupportRequest.all
    end


    def show
      @support_request = SupportRequest.find(params[:id])
    end


    def new
      @support_request = SupportRequest.new
    end

    def edit
      @support_request = SupportRequest.find(params[:id])
    end


    def create
      @support_request = SupportRequest.new(support_request_params)

      if @support_request.save
        redirect_to @support_request
      else
        render 'new'
      end
    end


    def update
      @support_request = SupportRequest.find(params[:id])

      if @support_request.update(support_request_params)
        redirect_to @support_request
      else
        render 'Edit'
      end
    end


    def destroy
      @support_request = SupportRequest.find(params[:id])
      @support_request.destroy

      redirect_to support_requests_path
    end

    


    private
      def support_request_params
        params.require(:support_request).permit(:name, :email, :message, :department)
      end
end
