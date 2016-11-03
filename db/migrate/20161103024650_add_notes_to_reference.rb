class AddNotesToReference < ActiveRecord::Migration[5.0]
  def change
    add_column :References, :notes, :String
  end
end
