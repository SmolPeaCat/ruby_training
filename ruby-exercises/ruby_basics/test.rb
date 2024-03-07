# frozen_string_literal: true
my_favorites = { color: 'blue', number: 65 }

my_favorites = { number: 21, movie: 'Avengers: Endgame' }
foo = puts my_favorites.fetch(:color, nil)

p foo
