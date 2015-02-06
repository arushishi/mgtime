class CreateMCards < ActiveRecord::Migration
  def change
    create_table :m_cards do |t|
      t.string :card_identification_code, :limit => 32, :null => false, :default => 'No ID CODE'
      t.string :m_user_id, :limit => 32, :null => false, :default => 'No User'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0

      t.timestamps
    end
  end
end
