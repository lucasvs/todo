class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?

  # GET /colors
  # GET /colors.json
  def index
#    @colors = Color.all
  end

  # GET /colors/1
  # GET /colors/1.json
  def show
  end

  # GET /colors/new
  def new
 #   @color = Color.new
  end

  # GET /colors/1/edit
  def edit
  end

  # POST /colors
  # POST /colors.json
  def create
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def color_params
    end
end
