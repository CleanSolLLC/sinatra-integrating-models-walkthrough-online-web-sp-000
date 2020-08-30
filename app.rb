require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    
    @analyzed_text.most_used_letter.each+pair do |k,v|
      
    binding.pry
    end
    
    erb :results
  end
end
