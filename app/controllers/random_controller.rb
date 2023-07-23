class RandomController < ApplicationController

  def random_form
    render({ :template => "calculator_templates/display_random_new" })
  end

  def random_calculate
    @minimum = params.fetch("minimum").to_f
    @maximum = params.fetch("maximum").to_f
    if @minimum > @maximum
      tmp = @minimum
      @minimum = @maximum
      @maximum = tmp
    end
    @random_number = rand(@minimum..@maximum)
    render({ :template => "calculator_templates/display_random_results" })
  end

end
