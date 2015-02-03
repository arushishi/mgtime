class CreateMUsers < ActiveRecord::Migration
  def change
    create_table :m_users do |t|
      t.comment '���[�U�}�X�^'
      t.string :user_name, :limit => 128, :null => false, :default => 'No Name', :comment => '���[�U��'
      t.string :password_digest, :limit => 255, :null => false, :default => 'No Pass', :comment => '�Í����p�X���[�h'
      t.string :remember_token, :limit => 255, :comment => '���O�C����ԕێ��g�[�N��'
      t.integer :delete_flg, :limit => 1, :null => false, :default => 0, :comment => '�폜�t���O'

      t.timestamps
    end
  end
end
