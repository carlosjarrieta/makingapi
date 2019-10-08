class AreasController < ApplicationController
  before_action :authenticate_user
   def index
     render json:Area.all
   end
end
