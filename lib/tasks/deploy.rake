task "deploy:launch" do
  raise("Need a version") unless ENV["VERSION"].present?
  raise("Need a stage (staging, preprod, qa, prod, etc.)") unless ENV["STAGE"].present?
end

desc "Build AMI for this app"
task "deploy:build" do
  raise("Need a version") unless ENV["VERSION"].present?

  ENV["PLAYBOOK"] = "#{Rails.root}/config/deploy/ansible/app.yml"
  system("packer", "build", "#{Rails.root}/config/deploy/packer/images/app.json")
end
