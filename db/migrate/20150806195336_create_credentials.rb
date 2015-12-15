#
class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :website
      t.string :user_name
      t.string :email
      t.string :password
      t.references :user

      t.timestamps null: false
    end
  end
end

