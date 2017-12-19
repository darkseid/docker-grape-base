module TaskApp
  class API < Grape::API
    format :json
    # prefix :api

    resource :tasks do
      desc 'Return a list of tasks'
      get do
        Task.all
        # [
        #   {id: 1, description: 'Run 21k', status: :created},
        #   {id: 2, description: 'Stop eating sugar', status: :finished},
        #   {id: 3, description: 'Run a short triathlon', status: :not_started},
        # ]
      end
    end
  end
end