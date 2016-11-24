require 'sinatra/base'
require_relative 'player'
require_relative 'game'
class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    if @game.turn == @game.player1
      @game.attack(@game.player2)
    else
      @game.attack(@game.player1)
    end
    erb(:attack)
  end

  post '/switch_names' do
    $game.switch_turn
    redirect '/play'
  end


run! if app_file == $0

end
