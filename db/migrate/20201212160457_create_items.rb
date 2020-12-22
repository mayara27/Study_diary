class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.date :deadline
      t.string :status
      t.string :comment
      t.string :tipo
      t.boolean :done

      t.timestamps
    end
  end
end
