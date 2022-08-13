class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :login_email, null: false, unique: true
      t.string :login_password, null: false, unique: true, limit: 16

      t.timestamps
    end
  end
end
