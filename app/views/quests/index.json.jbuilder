json.array!(@quests) do |quest|
  json.extract! quest, :id, :question, :answer
  json.url quest_url(quest, format: :json)
end
