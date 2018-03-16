class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    comedians = Comedians.all

    erb :'comedians/index', locals: { comedians: comedians }
  end
end
