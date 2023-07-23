class PaymentController < ApplicationController

  def payment_form
    render({ :template => "calculator_templates/display_payment_new" })
  end

  def payment_calculate
    @number = params.fetch("number").to_f
    @squared_number = @number**2
    render({ :template => "calculator_templates/display_payment_results" })
  end

end
