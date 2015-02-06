class CreateTCorrecteddata < ActiveRecord::Migration
  def change
    create_table :t_correcteddata do |t|
      t.integer :t_punchdatum_id
      t.integer :m_user_id
      t.string :access_control_kubun
      t.timestamp :corrected_time
      t.string :comment
      t.integer :delete_flg

      t.timestamps
    end
  end
end
