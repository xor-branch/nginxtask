Rails.application.routes.draw do
  root 'subjects#index'
  resources :subjects
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    end
  post "/graphql", to: "graphql#execute"

end
