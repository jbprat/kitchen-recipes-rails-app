web: bundle exec puma -p $PORT -C config/puma.rb
worker: bundle exec sidekiq -e $RACK_ENV -q default -c $SIDEKIQ_WORKERS
