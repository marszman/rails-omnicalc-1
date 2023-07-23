Rails.application.routes.draw do

  get("/", { :controller => "home", :action => "go_home" })

  get("/square/new", { :controller => "square", :action => "square_form" })

  get("/square/results", { :controller => "square", :action => "square_calculate" })

end
