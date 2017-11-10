workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

early_hints ENV['EARLY_HINTS'] || true

rackup      DefaultRackup
port        ENV['PORT']     || 2300
environment ENV['RACK_ENV'] || ENV['HANAMI_ENV'] || 'development'

on_worker_boot do
  Hanami.boot
end
