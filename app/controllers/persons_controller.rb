class PersonsController < ApplicationController

  def index
    if params[:q].present?
      if params[:q] == "director"
        @directors = Director.all
      elsif params[:q] == "actor"
        @actors = Actor.all
      end
    end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if params[:person_type]=="actor"
    	@person = Actor.new(person_params)
    elsif params[:person_type]=="director"
        @person = Director.new(person_params)
    end

    respond_to do |format|
      if @person.save
        format.html { redirect_to persons_path, notice: 'Person was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.permit(:first_name, :last_name, :birth_date, :description)
    end
end
