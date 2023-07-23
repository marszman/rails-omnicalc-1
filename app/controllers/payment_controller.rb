class PaymentController < ApplicationController

  def payment_form
    render({ :template => "calculator_templates/display_payment_new" })
  end

  def payment_calculate
    apr = params.fetch("apr").to_f
    rate = apr / 1200
    @period = params.fetch("period").to_f
    period_months = @period * 12
    principal = params.fetch("principal").to_f
  
    pmt = (rate * principal) / (1 - ((1 + rate)**(-period_months)))
  
    pmt_rounded = pmt.round(2).to_f
    @pmt_currency = pmt_rounded.to_fs(:currency)
    @principal_currency = principal.to_fs(:currency)
    @apr_percent = apr.round(4).to_fs(:percentage, { :precision => 4 } )
    render({ :template => "calculator_templates/display_payment_results" })
  end

end
