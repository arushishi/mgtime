class CreateTPunchdata < ActiveRecord::Migration
  def change
    create_table :t_punchdata do |t|
      t.integer :m_user_id, :limit => 11, :null => false, :default => 0
      t.string :card_identification_code, :limit => 32, :null => false, :default => 'No ID CODE'
      t.string :access_control_kubun, :limit => 7, :null => false, :default => 'None'
      t.datetime :punch_time

      t.timestamps
    end
  end
end
