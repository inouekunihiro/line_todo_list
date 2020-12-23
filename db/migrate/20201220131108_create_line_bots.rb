class CreateLineBots < ActiveRecord::Migration[6.0]
  def change
    create_table :line_bots do |t|
      t.text :message

      t.timestamps
    end
  end
end
