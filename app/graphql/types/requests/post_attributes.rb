module Types
  class Requests::PostAttributes < Types::BaseInputObject
    description 'arguments for post'

    argument :title, String, required: true
    argument :content, String, required: true
    argument :date, String, required: true
    argument :user_id, ID, required: true
    argument :category_id, String, required: true
  end
end
