rails_env = new_resource.environment["RAILS_ENV"]

execute 'run_rake' do
  cwd release_path
  command "bundle exec rake #{node[:rake][:command]}"
  environment "RAILS_ENV" => rails_env
end
