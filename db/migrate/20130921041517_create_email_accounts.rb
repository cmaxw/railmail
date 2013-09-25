class CreateEmailAccounts < ActiveRecord::Migration
  def change
    create_table :email_accounts do |t|
      t.string :server
      t.integer :port
      t.boolean :ssl
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
