Rails.application.routes.draw do
  root 'rps#throw'
  get("/throw/:sign", { :controller => "rps", :action => "throw" })
  post("/throw/:sign", { :controller => "rps", :action => "throw" })
end
