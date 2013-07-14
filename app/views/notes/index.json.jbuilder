json.array!(@notes) do |note|
  json.extract! note, :date, :done, :notes
  json.url note_url(note, format: :json)
end
