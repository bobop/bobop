after "deploy", "refresh_sitemaps"
task :refresh_sitemaps do
  run "cd #{latest_release} && RAILS_ENV=#{rails_env} rake sitemap:refresh"
end