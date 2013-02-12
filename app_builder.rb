class AppBuilder < Rails::AppBuilder
  def readme
    create_file "README.md", "TODO"
  end
  
  def test
    @generator.gem 'rspec-rails', group: [:test, :development]
    @generator.gem 'annotate', '~> 2.4.1.beta',group: [:test, :development]
    at_exit do
      generate 'rspec:install'
    end
  end

  def leftovers
    @generator.gem 'bootstrap-sass', '2.2.2.0'
    @generator.gem 'pg'
    @generator.gem 'will_paginate'
    if yes? "Do you want to generate a root controller?"
      name = ask("What should it be called?").underscore
      generate :controller, "#{name} index"
      route "root to: '#{name}\#index'"
      remove_file "public/index.html"
    end
    run "git flow init"
    append_file ".gitignore", "config/database.yml"
    run "touch config/example_database.yml"
    git add: ".", commit: "-m 'initial commit'"
  end
end