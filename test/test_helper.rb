# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

GEM_PATH = File.expand_path('../', File.dirname(__FILE__))

require File.expand_path("../../test/dummy/config/environment.rb", __FILE__)
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../../test/dummy/db/migrate", __FILE__)]
require "rails/test_help"

# Filter out Minitest backtrace while allowing backtrace from other libraries
# to be shown.
Minitest.backtrace_filter = Minitest::BacktraceFilter.new

Rails::TestUnitReporter.executable = 'bin/test'

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end

module Kernel
  def silence_stdout_if(cond, &run)
    silence_stream_if(cond, STDOUT, &run)
  end

  def silence_stderr_if(cond, &run)
    silence_stream_if(cond, STDERR, &run)
  end

  def silence_stream_if(cond, stream, &run)
    if cond
      silence_stream(stream, &run)
    else
      run.call
    end
  end

  def silence_stream(stream)
    old_stream = stream.dup
    stream.reopen(File::NULL)
    stream.sync = true
    yield
  ensure
    stream.reopen(old_stream)
    old_stream.close
  end unless method_defined?(:silence_stream)
end
