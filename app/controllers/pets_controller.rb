class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[ :id])
  end

  def edit
    @pet = Pet.find(params[ :id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(params.require(:pet).permit(:name,:age,:description))
    if @pet.save
      redirect_to @pet
    else
      render "new"
    end
  end

  def destroy
    @pet = Pet.find(params[ :id])
    @pet.destroy

    redirect_to pets_path
  end

  def update
    @pet = Pet.find(params[ :id])
    @pet.update(params.require(:pet).permit(:name,:age,:description))
    
    redirect_to @pet
  end
end
