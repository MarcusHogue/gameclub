require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { genres: @game.genres, platforms: @game.platforms, price: @game.price, price_url: @game.price_url, rating: @game.rating, review_url: @game.review_url, summary: @game.summary, time_to_beat_100: @game.time_to_beat_100, time_to_beat_main: @game.time_to_beat_main, time_to_beat_url: @game.time_to_beat_url, title: @game.title, trailer_url: @game.trailer_url }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { genres: @game.genres, platforms: @game.platforms, price: @game.price, price_url: @game.price_url, rating: @game.rating, review_url: @game.review_url, summary: @game.summary, time_to_beat_100: @game.time_to_beat_100, time_to_beat_main: @game.time_to_beat_main, time_to_beat_url: @game.time_to_beat_url, title: @game.title, trailer_url: @game.trailer_url }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
