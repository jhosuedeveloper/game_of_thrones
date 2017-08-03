class CharactersController < ApplicationController


  def index

    if params[:house_id]==nil
      @characters = Character.all
    else
      @house = House.find(params[:house_id])
      @characters = @house.characters
    end

  end


  # -------------------------------------




  def show
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
  end


  def new
    if params[:house_id]!=nil
    @house = House.find(params[:house_id])
    end

    @character = Character.new
  end



  def create

    if params[:house_id]!=nil
    @house = House.find(params[:house_id])
    new_character = @house.characters.create(passing_params)
    redirect_to house_character_path(@house, new_character)
    else
    @house = House.find_by(name: passing_params[:house])
    new_character = @house.characters.create!(passing_params2)
    redirect_to house_character_path(@house, new_character)
    end

  end





  def edit
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
  end


  def destroy
    @house= House.find(params[:house_id])
    @character=@house.characters.find(params[:id])
    @character.destroy
    redirect_to houses_path
  end


  def update

    @house= House.find(params[:house_id])
    @character=@house.characters.find(params[:id])
    @character.update(passing_params2)
    redirect_to house_characters_path(@house)
  end





private



def passing_params
params.require(:character).permit(:name, :text, :house)
end

def passing_params2
params.require(:character).permit(:name, :text)
end

end
