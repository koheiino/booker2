class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.text :option
      t.timestamps
    end
  end
end
