json.array!(@t_correcteddata) do |t_correcteddatum|
  json.extract! t_correcteddatum, :t_punchdatum_id, :m_user_id, :access_control_kubun, :corrected_time, :comment, :delete_flg
  json.url t_correcteddatum_url(t_correcteddatum, format: :json)
end