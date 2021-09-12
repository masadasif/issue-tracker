class IssueSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :status
end
