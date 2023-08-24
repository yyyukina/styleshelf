class Category < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: 'Tops' },
      { id: 3, name: 'Bottoms' },
      { id: 4, name: 'Dresses' },
      { id: 5, name: 'Outer' },
      { id: 6, name: 'Shoes' },
      { id: 7, name: 'Bags' },
      { id: 8, name: 'Accessories' },
      { id: 9, name: 'その他' }
    ]

    include ActiveHash::Associations
    has_many :closets
end