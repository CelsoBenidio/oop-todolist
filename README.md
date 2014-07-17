A simple app to demonstrate the MVC pattern with a command line app.

```bash
$ ruby start.rb
```

## Architecture

- **Model**: `TodoItem`
- **View**: `Display`
- **Controller**: `Controller`

We fake the database with `TodoRepository` and the browser with `InfiniteLoop`.