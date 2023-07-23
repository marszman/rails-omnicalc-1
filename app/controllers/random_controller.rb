class RandomController < ApplicationController

  def random_form
    render({ :template => "calculator_templates/display_random_new" })
  end

  def random_calculate
    @number = params.fetch("number").to_f
    @squared_number = @number**2
    render({ :template => "calculator_templates/display_random_results" })
  end

end
