class Color < ActiveHash::Base
    self.data = [
      { id: 1, name: '---' },
      { id: 2, name: 'Black' },
      { id: 3, name: 'White' },
      { id: 4, name: 'Gray' },
      { id: 5, name: 'Brown' },
      { id: 6, name: 'Beige' },
      { id: 7, name: 'Silver' },
      { id: 8, name: 'Gold' },
      { id: 9, name: 'Red' },
      { id: 10, name: 'Blue' },
      { id: 11, name: 'Green' },
      { id: 12, name: 'Orange' },
      { id: 13, name: 'Purple' },
      { id: 14, name: 'Pink' },
      { id: 15, name: 'Yellow' },
      { id: 16, name: 'Navy' },
      { id: 17, name: 'Khaki' },
      { id: 18, name: 'その他' }
    ]

    include ActiveHash::Associations
    has_many :closets
end