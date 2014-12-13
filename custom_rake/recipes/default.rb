execute 'run_rake' do
  cwd release_path
  command "bundle exec rake #{node[:rake][:command]}"
  environment "RAILS_ENV" => "production"
end
