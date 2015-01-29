class CreateTCorrecteddata < ActiveRecord::Migration
  def change
    create_table :t_correcteddata do |t|
      t.comment '修正データ'
      t.integer :punch_id, :limit => 11, :null => false, :default => 0, :comment => '打刻データID'
      t.string :user_id, :limit => 32, :null => false, :default => 'No User', :comment => 'ユーザID'
      t.string :access_control_kubun, :limit => 7, :null => false, :default => 'None', :comment => '入退室区分（Arrived：出勤、Left：退勤、GoOut：外出、GoBack：戻り）'
      t.datetime :corrected_time, :null => true, :comment => '日時'
      t.string :comment, :limit => 128, :null => true, :comment => 'コメント'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0, :comment => '削除フラグ'

      t.timestamps
    end
  end
end
