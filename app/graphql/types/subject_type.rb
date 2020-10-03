Types::SubjectType = GraphQL::ObjectType.define do
  name "Subject"
  field :id, !types.ID
  field :title, !types.String
  field :content, !types.String
end
