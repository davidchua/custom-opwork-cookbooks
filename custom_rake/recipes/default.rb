execute 'run_rake' do
  cwd node[:deploy][node[:app_short_name]][:deploy_to] + "/current"
  command "bundle exec rake #{node[:rake][:command]}"
  environment "RAILS_ENV" => "production"
end
