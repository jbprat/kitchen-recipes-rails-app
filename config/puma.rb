# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum, this matches the default thread size of Active Record.
#
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }.to_i
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests, default is 3000.
#
port        ENV.fetch('PORT') { 3000 }

# Specifies the `environment` that Puma will run in.
#
environment ENV.fetch('RAILS_ENV') { 'development' }

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked webserver processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Preload the app
preload_app!

# Run code when a worker is spawned
on_worker_boot do
  # Set a global logger
  Rails.logger = ActiveSupport::Logger.new(STDOUT)

  # Set ActiveRecord config
  ActiveSupport.on_load(:active_record) do
    ActiveRecordConfigurationOverride.override!
  end

  # Set ActionController config
  ActiveSupport.on_load(:action_controller) do
    ActionController::Base.logger = Rails.logger
  end

  # Set ActionView config
  ActiveSupport.on_load(:action_view) do
    ActionView::Base.logger = Rails.logger
  end
end

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
