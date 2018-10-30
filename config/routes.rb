Rails.application.routes.draw do
  root 'rps#throw'
  post("/throw/:sign", { :controller => "rps", :action => "throw" })
end
