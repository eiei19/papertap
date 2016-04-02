require_dependency "pa/application_controller"

module Pa
  class IndexController < ApplicationController
    def index
      @client = Client.new
    end
  end
end