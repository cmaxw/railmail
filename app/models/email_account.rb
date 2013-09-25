require 'net/imap'

class EmailAccount < ActiveRecord::Base
  belongs_to :user

  def authenticate
    connection = Net::IMAP.new(server, port: port, ssl: ssl)
    connection.login(username, password)
    connection
  end
end
