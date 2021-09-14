class IssueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :status, :created_at
end
