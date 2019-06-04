class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.references :page, foreign_key: true
      t.text :value
      t.text :content_type
      t.integer :content_order

      t.timestamps
    end
  end
end
