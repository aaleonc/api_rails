class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users, id: false do |t|
      t.uuid :id, null: false, default: 'uuid_generate_v4()', primary_key: true
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
