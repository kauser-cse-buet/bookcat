# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

alice = Author.new(first_name: 'Alice', last_name: 'Allen', year_born: 1930)
alice.author_profile = AuthorProfile.new(birthplace: 'Memphis', bio: 'Alice was...', awards: 'Alice won...')
alice.books.new(title: 'The Fountainhead', year: 1943, summary: 'Individualistic architect...')
alice.books.new(title: 'Atlas Shrugged', year: 1957, summary: 'Dystopian USA...')
alice.save!

bob = Author.new(first_name: 'Bob', last_name: 'Bowman', year_born: 1940)
bob.author_profile = AuthorProfile.new(birthplace: 'Detroit', bio: 'Bob was...', awards: 'Bob won...')
bob.books.new(title: 'Jaws', year: 1974, summary: 'Shark! ...')
bob.save!

# chris.author_profile = chris_prof
# chris.save!
