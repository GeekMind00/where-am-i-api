WhereAmI-API

## About The Project

> WhereAmI-API is an API that provides information about a user's location and language.

### Built with

- main project [RoR](https://rubyonrails.org/)
- testing: [Rspec](https://rspec.info/).


## Getting Started

> This is an list of needed instructions to set up your project locally, to get a local copy up and running follow these instructions.

### Installation

1. **_Clone the repository_**

```sh
git clone git@github.com:GeekMind00/where-am-i-api.git
```

2. **_Navigate to repository directory_**

```sh
$ cd where-am-i-api
```

3. **_Install dependencies_**

```sh
$ bundle install
```

### Running

1. **_Running the application_**

```sh
$ rails s
```
- Routes:
    - To get user's IP, country and preferred language:
   ```sh 
   get /whereami
   ```