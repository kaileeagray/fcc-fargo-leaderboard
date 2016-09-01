class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:hello]
  def hello
  end
end
