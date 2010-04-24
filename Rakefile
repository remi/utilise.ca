# Adopted from Scott Kyle and Tate Johnson’s Rakefiles
# http://github.com/appden/appden.github.com/blob/master/Rakefile
# http://github.com/tatey/tatey.com/blob/master/Rakefile

task :default => :server

desc 'Build site with Jekyll'
task :build do
  sh 'mv _config-prod.yml _config.yml'
  jekyll('--rdiscount')
  sh 'mv _config.yml _config-prod.yml'
end

desc 'Start server with --auto'
task :server do
  sh 'mv _config-dev.yml _config.yml'
  jekyll('--server 3000 --auto --rdiscount --pygments')
  sh 'mv _config.yml _config-dev.yml'
end

desc 'Build and deploy'
task :deploy => :build do
  sh 'rsync -rtzh --progress --delete _site/ exomel@exomel.com:public/utilise.ca/_site'
end

def jekyll(opts = '')
  sh 'rm -rf _site/*'
  sh 'jekyll ' + opts
end
