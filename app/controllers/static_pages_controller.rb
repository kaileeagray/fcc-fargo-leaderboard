class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:hello]

  def leaderboard
  end

  def about
  end

  def contact
  end
end
