json.array!(@projects) do |project|
  json.extract! project, :id, :user_exam_id, :exam_method
  json.url project_url(project, format: :json)
end
