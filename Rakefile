namespace :assets do
  task :precompile do
    puts `bundle exec jekyll build --config _config.yml,_config-#{ENV['RACK_ENV']}.yml`
  end
end
