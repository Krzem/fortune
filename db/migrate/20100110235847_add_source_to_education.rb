class AddSourceToEducation < ActiveRecord::Migration
  def self.up
    add_column :education, :source, :string
  end

  def self.down
    remove_column :education, :source
  end
end
