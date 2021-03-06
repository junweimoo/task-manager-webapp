# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
tasks = Task.create([
  {
    title: 'Task 1',
    description: 'Task Description 1'
  },
  {
    title: 'Task 2',
    description: 'Task Description 2'
  },
  {
    title: 'Task 3',
    description: 'Task Description 3'
  },
  {
    title: 'Task 4',
    description: 'Task Description 4'
  }
])

tags = Tag.create([
  {
    name: 'Work'
  },
  {
    name: 'Education'
  },
  {
    name: 'Hobbies'
  },
  {
    name: 'Social'
  }
])