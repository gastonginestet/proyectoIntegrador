class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
    add_index :books, %i[user_id title], unique: true
  end
end
