desc "Deploy me"
task "deploy" do
  version = ENV["VERSION"] || raise("Need a version")

  # uri = URI('http://52.17.68.74:4567/deploy')
  # Net::HTTP.post_form(uri, )
  RestClient::Request.execute(method: :post, url: 'http://52.17.68.74:4567/deploy', timeout: 1200,
    headers: {params: {token: "8bc296dacd8685455a872cf00ac04b0a", version: version}})
end
