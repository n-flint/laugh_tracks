class ComediansController < ApplicationController

  def index
    @comedians = Comedian.where(query_params)
    @specials = Special.all
    @avg_age = @comedians.average_age
    @avg_runtime = @specials.average_length
    @cities = @comedians.cities
  end


  private
  def query_params
    params.permit(:name, :age, :city)
  end

end
