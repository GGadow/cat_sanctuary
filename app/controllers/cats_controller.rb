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
