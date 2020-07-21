class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render("lottery_stuff/woohoo.html.erb")
  end 

  def losers
    @losers = Array.new

    5.times do 
      number = rand(1..100)
      @losers.push(number)
    end

    render("lottery_stuff/unlucky.html.erb")
  end

end
