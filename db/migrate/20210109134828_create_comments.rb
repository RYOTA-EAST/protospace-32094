class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, foreign_key: false
      t.references :prototype, foreign_key: false
      t.timestamps
    end
  end
end
