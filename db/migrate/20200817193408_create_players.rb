class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :img_url
      t.string :—no-test-framework

      t.timestamps
    end
  end
end
