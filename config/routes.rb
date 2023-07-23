Rails.application.routes.draw do

  get("/", { :controller => "home", :action => "go_home" })

  get("/square/new", { :controller => "square", :action => "square_form" })
  get("/square/results", { :controller => "square", :action => "square_calculate" })

  get("/square_root/new", { :controller => "squareroot", :action => "squareroot_form" })
  get("/square_root/results", { :controller => "squareroot", :action => "squareroot_calculate" })

  get("/payment/new", { :controller => "payment", :action => "payment_form" })
  get("/payment/results", { :controller => "payment", :action => "payment_calculate" })

  get("/random/new", { :controller => "random", :action => "random_form" })
  get("/random/results", { :controller => "random", :action => "random_calculate" })

end
