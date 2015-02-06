class CreateTCorrecteddata < ActiveRecord::Migration
  def change
    create_table :t_correcteddata do |t|
      t.integer :t_punchdatum_id, :limit => 11, :null => false, :default => 0
      t.integer :m_user_id, :limit => 11, :null => false, :default => 0
      t.string :access_control_kubun, :limit => 7, :null => false, :default => 'None'
      t.timestamp :corrected_time, :null => true
      t.string :comment, :limit => 128, :null => true
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0

      t.timestamps
    end
  end
end
