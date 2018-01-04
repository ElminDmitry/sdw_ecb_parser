Setup:

```bash
bundle install
bundle exec hanami db create
bundle exec hanami db migrate

bundle exec hanami server
```

Testing:

```bash
# db setup
HANAMI_ENV=test bundle exec hanami db create
HANAMI_ENV=test bundle exec hanami db migrate

# test run
bundle exec rake spec
```