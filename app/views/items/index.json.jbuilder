json.array!(@items) do |item|
  json.extract! item, :id, :title, :checked_out, :type, :barcode_num, :author
  json.url item_url(item, format: :json)
end
