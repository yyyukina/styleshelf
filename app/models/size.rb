class Size < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: 'SS' },
      { id: 3, name: 'S' },
      { id: 4, name: 'M' },
      { id: 5, name: 'L' },
      { id: 6, name: 'LL' },
      { id: 7, name: 'Free' },
      { id: 8, name: 'その他' }
    ]

    include ActiveHash::Associations
    has_many :closets
end