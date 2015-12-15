require "net/http"

desc "Deploy me"
task "deploy" do
  version = ENV["VERSION"] || raise("Need a version")

  uri = URI('http://52.17.68.74:4567/deploy')
  Net::HTTP.post_form(uri, 'token' => "8bc296dacd8685455a872cf00ac04b0a", "version" => version)
end
