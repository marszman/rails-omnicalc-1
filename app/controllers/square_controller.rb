class SquareController < ApplicationController

  def square_form
    render({ :template => "calculator_templates/display_square_new" })
  end

  def square_calculate
    @number = params.fetch("number").to_f
    @squared_number = @number**2
    render({ :template => "calculator_templates/display_square_results" })
  end

end
