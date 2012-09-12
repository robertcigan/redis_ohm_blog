class Post < Ohm::Model
  include Ohm::Timestamps
  include Ohm::DataTypes
  include Ohm::Slug
  
  attribute :title
  attribute :content
  attribute :author
  
  unique :title # unique index
  
  def validate
    assert_present :title
  end
  
  def to_s
    title
  end
end