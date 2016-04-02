require_dependency "ta/application_controller"

module Ta
  class InputtersController < ApplicationController
    def create
      @inputter = Inputter.new(inputter_params)
      @graph = Koala::Facebook::API.new(inputter_params[:fb_token])
      @inputter.fbid = @graph.get_object("me")["id"]
      if @inputter.save
        session[:inputter_id] = @inputter.id
        redirect_to controller: :index, action: :index
      else
        render template: "ta/index/index"
      end
    end

    def facebook_callback
      if request.env["omniauth.auth"].present?
        info = request.env["omniauth.auth"]["info"]
        credentials = request.env["omniauth.auth"]["credentials"]

        if inputter = Inputter.find_by_fbid(request.env["omniauth.auth"]["uid"])
          session[:inputter_id] = inputter.id
          redirect_to controller: :index, action: :index
          return
        end

        @inputter = Inputter.new(
          name: info["name"],
          email: info["email"],
          fb_token: credentials["token"]
        )
        render template: "ta/index/index"
      end
    end

    def sign_out
      session[:inputter_id] = nil
      redirect_to root_path
    end

    private
      def inputter_params
        params.require(:inputter).permit(
          :name,
          :email,
          :fb_token
        )
      end

  end
end