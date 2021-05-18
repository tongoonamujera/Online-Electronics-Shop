json.extract! cell_phone, :id, :CellPhoneName, :Type, :Memory, :Condition, :Location, :Price, :created_at, :updated_at
json.url cell_phone_url(cell_phone, format: :json)
