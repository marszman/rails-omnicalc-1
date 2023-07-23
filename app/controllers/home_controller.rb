class HomeController < ApplicationController
  def go_home
    render({ :template => "calculator_templates/display_home" })
  end
end
