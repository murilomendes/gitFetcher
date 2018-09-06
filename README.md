# GitFetcher

Git Fetcher is a simple web-app to get some repositories from GitHub. 

### How to use:
The usability of this system is simple. The only thing that you need to do is choose one of five button displayed with Programming Language names and you'll be redirected to another page with repositories names, their own description and an hyper-link to their github page.
You can choose one of five languages:
* Ruby;
* Elixir;
* JavaScript;
* Swift;
* GO.

## Used Technologies:
* Ruby v2.3.7
* Rails v5.2.1
* Docker with Compose.
* Bootstrap 4.0 for the styles of front-end.

### Main gems used:
* Puma - A web server built for concurrency.
* Git-Trend - Responsable for get the trend-repositories in Github.
* RSpec - Responsable for creation and executation of the Tests.

### How to build the solution?

As I said, I used Docker for create the dev & test environment.

1. Clone this repository.
2. Build this repository with command:

```sh
$ docker-compose up --build
```

### Can I execute commands into a bash of a running app?
Yes, you can.
You need to enter in a docker executing the comand:
```sh
$ docker exec -it <container-name> bash
```
Sample:
```sh
$ docker exec -it gitfetcher bash
```
And voilà

### How execute SQL commands into the db container?
You have to do again the previous command:
```sh
$ docker exec -it <db-container-name> bash
```
Sample:
```sh
$ docker exec -it gitfetcher-db bash
```
But now, is necessary enter into PSQL:
```sh
$ psql -d <database-name>
```
Sample:
```sh
$ psql -d gitfetcher-db
```
Now, you can execute your own T-commands. 
> ps: for execute the command, you need to put ; in the end of line.

> ps2: to exit the db container, you have to execute the command "\q".

## Is an simple application, but it have tests?
Yes. We have.
For execute the tests you have to follow this steps:
```sh
$ docker exec -it gitfetcher bash
$ rspec
```
And the tests will be executed :)

# Can I see the online Demo?
Sure.
I already have published this app into Heroku:
https://gitfetcher-rails.herokuapp.com/


Thank you :)

