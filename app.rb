require 'sinatra/base'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    $game = Game.new(player1, player2)
    redirect to('/player1_turn')
  end

  get '/player1_turn' do
    @game = $game
    erb(:player1_turn)
  end

   get '/player1_attack' do
     @game = $game
     @game.attack(@game.player2)
     if @game.player2.hp <=0
    #  erb(:player1_wins)
    redirect to('/player1_wins')
     else erb(:player1_attack)
     end
   end

   get '/player2_turn' do
     @game = $game
     erb(:player2_turn)
   end

   get '/player2_attack' do
     @game = $game
     @game.attack(@game.player1)
     erb(:player2_attack)
   end

     get '/player1_wins' do
       @game = $game
       erb(:player1_wins)
     end

  run! if app_file == $0

end
