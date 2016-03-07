# Todo List Project (Under Construction)
For more intomation about this project, see [here](https://www.coursera.org/learn/rails-with-active-record/home)

This app is deployed on Heroku as well, check it out [here](https://todo-list-siwei.herokuapp.com/todo_items)

## A demo project to showcase rails active records and action pack in rails 4

### Quick start
 1. Clone this repo 
 2. Run rails server (or rails s)
 3. visit this [URL] (http://localhost:3000/todo_items) to see list of todo items

### Models 
There are four models in the todo list:
  1. User
  2. Profile
  3. TodoList
  4. TodoItem

### ER Diagram
Relationship is describe by the diagram below:

        |------| 1      1 |----------|
        | User |----------| Profile  |
        |------|          |----------|
            \
             \
              \ 1   * |----------| 1      * |----------|
               \------| TodoList |----------| TodoItem |
                      |----------|          |----------|


~