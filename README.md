## TodoList

### A demo project to showcase active recode in rails 4

There are four models

  1. User
  2. Profile
  3. TodoList
  4. TodoItem

  Relationship is describe by the diagram below:

        |------| 1      1 |----------|
        | User |----------| Profile  |
        |------|          |----------|
            \
             \
              \ 1   * |----------| 1      * |----------|
               \------| TodoList |----------| TodoItem | 
                      |----------|          |----------|