desc 'Build site with Jekyll'
task :build do
  jekyll('--rdiscount')
end

def jekyll(opts = '')
  sh 'rm -rf _site/*'
  sh 'jekyll ' + opts
end
