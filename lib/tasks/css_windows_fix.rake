# lib/tasks/css_windows_fix.rake
# Workaround for cssbundling-rails tool detection on Windows.
# We install/build CSS ourselves when needed, so make these tasks no-ops.

[ "css:install", "css:build" ].each do |t|
  Rake::Task[t].clear if Rake::Task.task_defined?(t)
end

namespace :css do
  desc "No-op install (Windows workaround)"
  task :install do
    # intentionally blank
  end

  desc "No-op build (Windows workaround)"
  task :build do
    # intentionally blank
  end
end
