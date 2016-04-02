module Ta
  class ApplicationController < ActionController::Base
    before_action :set_inputter
    private
      def set_inputter
        @current_inputter ||= Inputter.find(session[:inputter_id]) if session[:inputter_id]
      end
      def current_inputter
        @current_inputter
      end
  end
end
