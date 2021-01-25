class GamesController < ApplicationController

  def new
    @game = Game.new
    render template: 'runs/new'
  end

  def create
  end

  def index
    @game = Game.all
  end

  def show
    @game = Game.find(params[:id])
    redirect_to runs_path(index)
  end

  def edit
    @run = Run.find(params[:id2])
    @run.errors = nil
    render template: 'runs/edit'
  end

end
