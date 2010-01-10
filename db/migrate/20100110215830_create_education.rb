class CreateEducation < ActiveRecord::Migration
  def self.up
    create_table :education do |t|
      t.string :author
      t.text :quotation

      t.timestamps
    end
  end

  def self.down
    drop_table :education
  end
end
