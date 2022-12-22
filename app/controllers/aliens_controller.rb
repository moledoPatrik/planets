class AliensController < ApplicationController
  # def index
  # end
  # def show
  # end

  def new
    @alien = Alien.new
    @planet = Planet.find(params[:planet_id])
  end

  def create
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new(alien_params)
    @alien.planet = @planet
    if @alien.save
      redirect_to @planet
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    raise
    @alien =
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :age, :photo)
  end
end
