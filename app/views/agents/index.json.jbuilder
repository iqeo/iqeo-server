json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :desc, :org_id
  json.url agent_url(agent, format: :json)
end
