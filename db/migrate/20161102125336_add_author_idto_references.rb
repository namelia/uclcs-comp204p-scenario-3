class AddAuthorIdtoReferences < ActiveRecord::Migration[5.0]
  def change
    add_column :References, :userid, :string

  end
end
