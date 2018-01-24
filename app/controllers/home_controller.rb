class HomeController < ApplicationController
  def index
    
      if params[:Id] == ""
        @nothing = "Hey You Didn't Write Anything"
      elsif 
        if params[:Id]
          begin
            @stock = StockQuote::Stock.quote(params[:Id])
          rescue StandardError
            @error = "Hey I couldn't understand that one"
          end
        end
      end
  end
  def about
  end
end
