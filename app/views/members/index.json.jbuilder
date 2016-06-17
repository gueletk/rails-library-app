json.array!(@members) do |member|
  json.extract! member, :id, :name, :email, :card_num, :pin
  json.url member_url(member, format: :json)
end
