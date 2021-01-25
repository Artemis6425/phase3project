class RunsController < ApplicationController

  def new
    @run = Run.new
  end

  def edit
    @run = Run.find(params[:id2])
    if params[:id].to_i <= 4
      if params[:id].to_i >= 1
        @game = Game.find(params[:id])
        if @game.id.to_i != @run.game_id.to_i
          redirect_to games_path
        else
          if @run.user_id.to_i != session[:user_id]
            redirect_to games_path
          end
                  #SUCCESS GOES HERE
        end
      else
        redirect_to games_path
      end
    else
      redirect_to games_path
    end
  end

  def create
    @run = Run.new(run_params)
    if @run.valid? == false
      render 'new'
    else
      if !@run.save
        redirect_to newrun_url(@run.game_id)
      else
        @run.time_formatting
        @run.save
        redirect_to gameindex_url(@run.game_id)
      end
    end
  end

  def index
    @game = Game.find(params[:id])
  end



  private

  def run_params
    params.permit(:hour, :minute, :second, :game_id, :user_id)
  end


end
