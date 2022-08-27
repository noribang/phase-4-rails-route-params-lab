Rails.application.routes.draw do
  get '/students', to: 'students#index'
  # Query params
  get '/students?name=:name', to: 'students#index'
  
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'

  ## Router
  #     Request            Controller#action
  get '/students/:id', to: 'students#show'

end
