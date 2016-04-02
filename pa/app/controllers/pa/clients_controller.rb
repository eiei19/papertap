require_dependency "pa/application_controller"

module Pa
  class ClientsController < ApplicationController
    def create
      @client = Client.new(client_params)
      o = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map { |i| i.to_a }.flatten
      password = (0...8).map { o[rand(o.length)] }.join
      @client.password = @client.password_confirmation = password
      if @client.save
        session[:client_id] = @client.id
        redirect_to controller: :index, action: :index
      else
        render template: "pa/index/index"
      end
    end

    def sign_in
      redirect_to root_path if session[:client_id]
    end

    def do_sign_in
      client = Client.find_by_email(params[:email])
      if client && client.authenticate(params[:password])
        session[:client_id] = client.id
        redirect_to root_path
      else
        flash[:alert] = "Invalid"
        render "sign_in"
      end
    end

    def sign_out
      session[:client_id] = nil
      redirect_to root_path
    end

    private
      def client_params
        params.require(:client).permit(
          :name,
          :email
        )
      end

  end
end