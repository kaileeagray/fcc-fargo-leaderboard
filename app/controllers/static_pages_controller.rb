class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:leaderboard, :about]

  def leaderboard
  end

  def about
  end


end
