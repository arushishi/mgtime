class CreateTPunchdata < ActiveRecord::Migration
  def change
    create_table :t_punchdata do |t|
      t.comment '打刻データ'
      t.integer :m_user_id, :limit => 11, :null => false, :default => 0, :comment => 'ユーザID'
      t.string :card_identification_code, :limit => 32, :null => false, :default => 'No ID CODE', :comment => 'カード識別コード'
      t.string :access_control_kubun, :limit => 7, :null => false, :default => 'None', :comment => '入退室区分（Arrived：出勤、Left：退勤、GoOut：外出、GoBack：戻り）'
      t.datetime :punch_time, :comment => '日時'

      t.timestamps
    end
  end
end
