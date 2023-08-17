class WelcomeController < ApplicationController
  def index
    Post.all.to_a
  end
end
