class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :list_id
      t.string :name

      t.timestamps
    end
  end
end
