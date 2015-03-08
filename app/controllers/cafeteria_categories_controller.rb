class CafeteriaCategoriesController < ApplicationController
  before_action :set_cafeteria_category, only: [:show, :edit, :update, :destroy]

  # GET /cafeteria_categories
  # GET /cafeteria_categories.json
  def index
    @cafeteria_categories = CafeteriaCategory.all
  end

  # GET /cafeteria_categories/1
  # GET /cafeteria_categories/1.json
  def show
  end

  # GET /cafeteria_categories/new
  def new
    @cafeteria_category = CafeteriaCategory.new
  end

  # GET /cafeteria_categories/1/edit
  def edit
  end

  # POST /cafeteria_categories
  # POST /cafeteria_categories.json
  def create
    @cafeteria_category = CafeteriaCategory.new(cafeteria_category_params)

    respond_to do |format|
      if @cafeteria_category.save
        format.html { redirect_to @cafeteria_category, notice: 'Cafeteria category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cafeteria_category }
      else
        format.html { render action: 'new' }
        format.json { render json: @cafeteria_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafeteria_categories/1
  # PATCH/PUT /cafeteria_categories/1.json
  def update
    respond_to do |format|
      if @cafeteria_category.update(cafeteria_category_params)
        format.html { redirect_to @cafeteria_category, notice: 'Cafeteria category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cafeteria_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafeteria_categories/1
  # DELETE /cafeteria_categories/1.json
  def destroy
    @cafeteria_category.destroy
    respond_to do |format|
      format.html { redirect_to cafeteria_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafeteria_category
      @cafeteria_category = CafeteriaCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafeteria_category_params
      params.require(:cafeteria_category).permit(:name)
    end
end
