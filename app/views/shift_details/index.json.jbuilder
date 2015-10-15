json.array!(@shift_details) do |shift_detail|
  json.extract! shift_detail, :id, :shift_name, :start_time, :end_time, :description, :user_id
  json.url shift_detail_url(shift_detail, format: :json)
end
