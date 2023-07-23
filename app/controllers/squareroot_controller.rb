class SquarerootController < ApplicationController

  def squareroot_form
    render({ :template => "calculator_templates/display_squareroot_new" })
  end

  def squareroot_calculate
    @number = params.fetch("number").to_f
    @sqrt_number = @number**(0.5)
    render({ :template => "calculator_templates/display_squareroot_results" })
  end

end
