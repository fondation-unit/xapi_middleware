class CreateXapiMiddlewareStatements < ActiveRecord::Migration[7.1]
  def up
    create_table :xapi_middleware_statements do |t|
      # @!group Columns

      # @!attribute actor_name
      #   @return [String] the name of the actor

      # @!attribute verb_id
      #   @return [String] the identifier of the verb

      # @!attribute verb_display
      #   @return [String] the display of the verb for en-US

      # @!attribute verb_display
      #   @return [String] the JSON representation of the complete display hash (for other languages)

      # @!attribute object_type
      #   @return [String] the type of the object

      # @!attribute object_identifier
      #   @return [String] the identifier of the object

      # @!attribute statement_json
      #   @return [String] the JSON representation of the statement

      # @!endgroup

      t.string :actor_name
      t.string :verb_id
      t.string :verb_display
      t.string :verb_display_full
      t.string :object_type
      t.string :object_identifier
      t.text :statement_json

      t.timestamps
    end
  end

  def down
    drop_table :xapi_middleware_statements
  end
end
