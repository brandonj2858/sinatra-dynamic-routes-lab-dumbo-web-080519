require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @product = @number * @number
    @product.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    answer = "Sorry I don't know how to do that."
    if @operation == "add"
      answer = (@number1 + @number2).to_s
    elsif @operation == "subtract"
      answer = (@number1 - @number2).to_s
    elsif @operation == "divide"
      answer = (@number1 / @number2).to_s
    elsif @operation == "multiply"
      answer = (@number1 * @number2).to_s
    else
      answer
    end
  end

end
