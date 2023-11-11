Rails.application.routes.draw do
  # Routes for Semester Input
  resources :semesters, only: [:new, :create] do
    resources :grades, only: [:new, :create]
  end

  # Routes for Displaying GPA/CGPA Results
  get '/results/overall', to: 'results#overall_results', as: 'overall_results'

  # Set the root URL to a specific action (adjust as needed)
  root 'semesters#new'
end
