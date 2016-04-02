class DeviseCreatePaClients < ActiveRecord::Migration
  def change
    create_table(:clients) do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :password_digest, null: false, default: ""
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
    end
    add_index :clients, :email, unique: true
    add_index :clients, :reset_password_token, unique: true
    add_index :clients, :created_at
    add_index :clients, :deleted_at

    create_table(:inputters) do |t|
      t.string :name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :fbid, null: false, default: ""
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at
    end
    add_index :inputters, :email, unique: true
    add_index :inputters, :fbid, unique: true
    add_index :inputters, :created_at
    add_index :inputters, :deleted_at
  end
end