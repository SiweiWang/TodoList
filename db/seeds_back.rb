# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create! [
  { username: "Fiorina", password_digest: "1954"},
  { username: "Trump", password_digest: "1946"},
  { username: "Carson", password_digest: "1951"},
  { username: "Clinton", password_digest: "1947"}
]

User.first.create_profile! (
  {gender: "female", birth_year: "1954", first_name: "Carly", last_name: "Fiorina" }
)

User.first.todo_lists.create! [
  {list_name: "a", list_due_date: Date.today + 1.year }
]

User.first.todo_lists[0].todo_items.create! [
  {title: "a1", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "a2", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "a3", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "a4", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "a5", due_date: Date.today + 1.year, description: "test", completed: false }
]

User.second.create_profile! (
  {gender: "male", birth_year: "1946", first_name: "Donald", last_name: "Trump" }
)

User.second.todo_lists.create! [
  {list_name: "b", list_due_date: Date.today + 1.year }
]

User.second.todo_lists[0].todo_items.create! [
  {title: "b1", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "b2", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "b3", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "b4", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "b5", due_date: Date.today + 1.year, description: "test", completed: false }
]

User.third.create_profile! (
  {gender: "male", birth_year: "1951", first_name: "Ben", last_name: "Carson" }
)

User.third.todo_lists.create! [
  {list_name: "c", list_due_date: Date.today + 1.year }
]

User.third.todo_lists[0].todo_items.create! [
  {title: "c1", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "c2", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "c3", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "c4", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "c5", due_date: Date.today + 1.year, description: "test", completed: false }
]

User.last.create_profile! (
  {gender: "female", birth_year: "1947", first_name: "Hillary", last_name: "Clinton" }
)

User.last.todo_lists.create! [
  {list_name: "d", list_due_date: Date.today + 1.year }
]

User.last.todo_lists[0].todo_items.create! [
  {title: "d1", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "d2", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "d3", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "d4", due_date: Date.today + 1.year, description: "test", completed: false },
  {title: "d5", due_date: Date.today + 1.year, description: "test", completed: false }
]

