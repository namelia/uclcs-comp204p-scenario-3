class AddNotestoReferences < ActiveRecord::Migration[5.0]
  def change
    add_column :References, :notes, :string
  end
end
