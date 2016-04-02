module Ta
  module ApplicationHelper
    def current_inputter
      @current_inputter
    end
    def inputter_signed_in?
      session[:inputter_id]
    end
  end
end
