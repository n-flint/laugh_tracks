class ComediansController < ApplicationController

  def index
    @comedians = Comedian.all
    @avg_age = Comedian.average_age
    @avg_runtime = Special.average_length
    @cities = Comedian.cities
  end

end
