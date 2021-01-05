git clone https://github.com/dantrim/dantrim.github.io
cd dantrim.github.io
git checkout source
gem install bundler
rbenv local 2.6.5 # setup the tested ruby version via rbenv
bundle install
rake install
