A simple app to demonstrate the MVC pattern with a command line app.

```bash
$ ruby start.rb
```

Then hit `Ctrl-C` to quit the program. You'll lose all your todos!

## Architecture

- **Model**: `TodoItem`
- **View**: `Display`
- **Controller**: `Controller`

We fake the database with `TodoRepository` and the browser with `InfiniteLoop`.