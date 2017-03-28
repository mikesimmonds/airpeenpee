class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :gender
      t.references :account, foreign_key: true
      t.boolean :toilet_user
      t.boolean :toilet_owner

      t.timestamps
    end
  end
end
