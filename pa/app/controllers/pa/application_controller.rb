module Pa
  class ApplicationController < ActionController::Base
    before_action :set_client
    private
      def set_client
        @current_client ||= Client.find(session[:client_id]) if session[:client_id]
      end
      def current_client
        @current_client
      end
  end
end
