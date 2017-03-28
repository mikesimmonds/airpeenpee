class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.references :toilet, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :rating
      t.string :comment
      t.boolean :has_paper

      t.timestamps
    end
  end
end
