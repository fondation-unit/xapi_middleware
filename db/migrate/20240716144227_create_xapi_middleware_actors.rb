class CreateXapiMiddlewareActors < ActiveRecord::Migration[7.1]
  def up
    create_table :xapi_middleware_actors do |t|
      t.string :object_type, null: true
      t.string :name, null: true
      t.string :mbox, null: true
      t.string :mbox_sha1sum, null: true
      t.string :openid, null: true
      t.bigint :account_id, null: false
      t.datetime :created_at, null: false
    end

    add_index :xapi_middleware_actors, :account_id
  end

  def down
    drop_table :xapi_middleware_actors
  end
end