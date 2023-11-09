Rails.application.routes.draw do
  # Routes for Course Input
  get '/courses/new', to: 'courses#new', as: 'new_course'
  post '/courses', to: 'courses#create'

  # Routes for Displaying GPA/CGPA Results
  get '/results/semester/:semester', to: 'results#semester_results', as: 'semester_results'
  get '/results/overall', to: 'results#overall_results', as: 'overall_results'

  # Set the root URL to a specific action (adjust as needed)
  root 'courses#new'
end