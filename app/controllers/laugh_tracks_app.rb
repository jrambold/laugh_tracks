class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    comedians = Comedian.all
    specials = Special.all

    erb :'comedians/index', locals: { comedians: comedians, specials: specials }
  end
end
