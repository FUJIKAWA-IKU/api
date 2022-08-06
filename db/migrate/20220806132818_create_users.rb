class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login_email
      t.string :login_password

      t.timestamps
    end
  end
end