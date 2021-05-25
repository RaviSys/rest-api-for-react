class CreateReactErrors < ActiveRecord::Migration[6.1]
  def change
    create_table :react_errors do |t|
      t.string :title
      t.string :error_type

      t.timestamps
    end
  end
end
