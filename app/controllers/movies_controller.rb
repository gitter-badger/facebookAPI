class MoviesController < ApplicationController
  def index
  end

  def graph
    @graph = Koala::Facebook::API.new(ENV['GRAPH_KEY'])
  end
end
