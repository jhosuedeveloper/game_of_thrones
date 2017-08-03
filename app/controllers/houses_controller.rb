class HousesController < ApplicationController

def index
@houses = House.all
end



# -----------------------------------------

# -----------------------------------------



def new
@house = House.new
end


def create
@house=House.create!(passing_params)
redirect_to house_path(@house)
end


# -----------------------------------------

# -----------------------------------------


def edit
@house  = House.find(params[:id])
end


def update
  @house = House.find(params[:id])
  @house.update(passing_params)

  redirect_to house_path(@house)
end

def destroy
  @house = House.find(params[:id])
  @house.destroy

  redirect_to houses_path
end


# -----------------------------------------

# -----------------------------------------


def show
@house = House.find(params[:id])
end



private

def passing_params
    params.require(:house).permit(:name, :text, :evil)
  end
end # end of house controller class
