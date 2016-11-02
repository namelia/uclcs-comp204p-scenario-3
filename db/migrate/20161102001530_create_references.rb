class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.string :number
      t.string :kind
      t.string :title
      t.string :author
      t.date :pubdate

      t.timestamps
    end
  end
end
