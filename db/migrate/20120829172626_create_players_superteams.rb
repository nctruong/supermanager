class CreatePlayersSuperteams < ActiveRecord::Migration
  def up
    create_table :players_superteams, :id => false do |t|
      t.references :player
      t.references :superteam
    end
    add_index :players_superteams, [:player_id, :superteam_id]
  end

  def down
    drop_table :players_superteams
  end
end