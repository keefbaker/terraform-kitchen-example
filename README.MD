# Kitchen terraform example

Prep:

- make sure you have Ruby installed (over v 2.5.0)
- gem install inspec and bundler

Running this:

- ensure you have set your `AWS_REGION` environment variable as this is used by inspec's AWS checks.
- run `bundle exec kitchen test`

The testable items from AWS using inspec are listed here:

https://github.com/inspec/inspec-aws

Notes:

Any outputs in terraform will automatically be passed to inspec as attributes, but you must define them in your inspec.yml
