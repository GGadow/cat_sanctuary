class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show
  end

  def new
    @cat = Cat.new
  end

  def edit
  end

  def create
    @cat = Cat.new(cat_params)
    respond_to do |format|
      if @cat.save
        format.html {redirect_to cats_path, notice: 'Cat has been saved.'}
        format.json { render :show, status: :created, location: @cat }
      else
        format.html {render :new}
        format.json {render json: @cat.errors, status: :unprocessable_entity}
      end
    end
  end

  def update
  end

  def destroy
  end

  private
 
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def cat_params
      
    end

end
