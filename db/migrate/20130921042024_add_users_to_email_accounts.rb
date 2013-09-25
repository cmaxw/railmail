class AddUsersToEmailAccounts < ActiveRecord::Migration
  def change
    add_reference :email_accounts, :user, index: true
  end
end
