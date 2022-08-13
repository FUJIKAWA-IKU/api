class CreateSnsUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :user_sns do |t|
      t.integer :user_id, null: false
      t.integer :type, null: false
      t.string :sns_url, null: false, unique: true

      t.timestamps
    end
  end
end
