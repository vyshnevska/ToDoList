class AddAuthorId < ActiveRecord::Migration
  def up
    add_column :tasks, :author_id, :integer
  end

  def down
  end
end
