json.array!(@invitation_templates) do |invitation_template|
  json.extract! invitation_template, :id, :subject, :body
  json.url invitation_template_url(invitation_template, format: :json)
end
