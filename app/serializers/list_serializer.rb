class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :list_name, :private

  def list_name
    object.list_name
  end

  def private
    object.private
  end

  def created_at
    object.created_at.strftime('%B %d %Y')
  end
  
end
