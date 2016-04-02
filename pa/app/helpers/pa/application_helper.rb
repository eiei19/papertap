module Pa
  module ApplicationHelper
    def current_client
      @current_client
    end
    def client_signed_in?
      session[:client_id]
    end
  end
end
