# Object Oriented Programming

Part of [Karr Examples](https://github.com/lewagon/karr-examples)

## Building Software

### TODO app

A simple app to demonstrate the MVC pattern with a command line app.

```bash
$ ruby lib/app.rb
```

Then hit `Ctrl-C` to quit the program. You'll lose all your todos!

#### Architecture

- **Model**: `Task`
- **View**: `TasksView`
- **Controller**: `TasksController`

We fake the database with `TaskRepository` and the browser with `Router`.
