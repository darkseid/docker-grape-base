require './config/database_initializer.rb'
require './models/task.rb'

Task.create(
  title: 'Run 10k',
  description: 'Run 10k below 45 minutes until March/2018'
  )

