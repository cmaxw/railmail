json.array!(@email_accounts) do |email_account|
  json.extract! email_account, :server, :port, :ssl, :username, :password
  json.url email_account_url(email_account, format: :json)
end
