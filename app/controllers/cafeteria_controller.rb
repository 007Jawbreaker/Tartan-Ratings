class CafeteriaController < ApplicationController
  before_action :set_cafeterium, only: [:show, :edit, :update, :destroy]

  # GET /cafeteria
  # GET /cafeteria.json
  def index
    @cafeteria = Cafeterium.all
  end

  # GET /cafeteria/1
  # GET /cafeteria/1.json
  def show
  end

  # GET /cafeteria/new
  def new
    @cafeterium = Cafeterium.new
  end

  # GET /cafeteria/1/edit
  def edit
  end

  # POST /cafeteria
  # POST /cafeteria.json
  def create
    @cafeterium = Cafeterium.new(cafeterium_params)

    respond_to do |format|
      if @cafeterium.save
        format.html { redirect_to @cafeterium, notice: 'Cafeterium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cafeterium }
      else
        format.html { render action: 'new' }
        format.json { render json: @cafeterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafeteria/1
  # PATCH/PUT /cafeteria/1.json
  def update
    respond_to do |format|
      if @cafeterium.update(cafeterium_params)
        format.html { redirect_to @cafeterium, notice: 'Cafeterium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cafeterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafeteria/1
  # DELETE /cafeteria/1.json
  def destroy
    @cafeterium.destroy
    respond_to do |format|
      format.html { redirect_to cafeteria_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafeterium
      @cafeterium = Cafeterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafeterium_params
      params.require(:cafeterium).permit(:item_name, :item_description, :item_price, :cafeteria_category_id)
    end
end
