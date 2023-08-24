class Search < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: 'Category' },
      { id: 3, name: 'Size' },
      { id: 4, name: 'Color' },
      { id: 5, name: 'Season' },
    ]

    include ActiveHash::Associations
    has_many :closets
end