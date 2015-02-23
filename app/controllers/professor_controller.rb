class ProfessorController < ApplicationController

  def create
    @professor = Professor.new(params[:professor])

    if professor.save
      #serialize success response
    else
      #serialize errors
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
private
  def professor_params
    params.require(:professor).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
