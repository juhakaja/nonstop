json.array!(@notes) do |note|
  json.extract! note, :date, :title, :notes
  json.url note_url(note, format: :json)
end