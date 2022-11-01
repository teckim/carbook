![](https://img.shields.io/badge/Microverse-blueviolet)

# Booking-app-backend

This app uses a Rails back-end as an API to send car details data to the frontend of a booking application.

Enjoy your API!

## Link to REACT FRONTEND

## Built With

- Ruby
- Ruby on Rails
- Terminal
- IRB
- Rubocop (linters)
- PostgreSQL

## Milestones

[Project Requirements](https://github.com/microverseinc/curriculum-final-capstone/blob/main/projects/business_requirements.md) - distributed into milestones below:



## API Endpoints

#### reservations endpoint

- POST /reservations/

  - Create a new reservation
  - e.g:

  ```
  {
    "car_id": 1,
    "user_id": 1,
    "date": "2022-08-30",
    "city": "London",
  }
  ```

- GET /reservations/
  - Get all reservations
  - returns:
  ```
  [{
    "id": 1,
    "car_id": 1,
    "user_id": 1,
    "date": "2022-08-30",
    "city": "London",
    "created_at": "2022-08-30T10:34:55.953Z",
    "updated_at": "2022-08-30T10:34:55.953Z"
  }]
  ```
- GET /reservations/:id
  - Get a reservation by id
  - returns:
  ```
  {
    "id": 1,
    "car_id": 1,
    "user_id": 1,
    "date": "2022-08-30",
    "city": "London",
    "created_at": "2022-08-30T10:34:55.953Z",
    "updated_at": "2022-08-30T10:34:55.953Z"
  }
  ```

## Getting Started

To get a local copy up and running follow these simple example steps.

## Pre-requisites

Make sure you have Ruby and Rails installed on your computer. If not, you can follow this [tutorial]() to install them.

If you don't have PostgreSQL installed, you can follow this [tutorial](https://www.postgresql.org/download/) to install it.

## Usage

In your terminal, navigate to your current directory and run this code

`git clone https://github.com/teckim/carbook-api.git`

Then run:

`cd booking-app-backend`

Open the project in your favorite code editor. `code .` for VS Code.

- Use the command `bundle install` or just simply `bundle` to install all project dependencies.
- Run `rails db:create db:migrate` to create the database and run migrations.
- You might need to supply a username and password for your PostgreSQL database if you run into an error with the previous step.
- Simply navigate to `config/database.yml` and add your username and password to the `username` and `password` fields.

Start terminal

`rails s`

- Then click on `http://127.0.0.1:3000`

Enjoy your fantastic Doctoral bookings as your app opens in the web browser!

## Run Linters:

### To run rubocop we use:

`rubocop`

### To autocorrect offenses with rubocop we use:

`rubocop --auto-correct-all` or
`rubocop -A`

## Testing

### Run Test for models

`rspec spec/models`

### Run Test for views

`bundle exec rspec spec/views`

## Usage


Enjoy saving time on long appointment calls by using our top ranking appointment booking App!

## Author 1:

👤 **Kinyera Amos**

- GitHub: [Kinyera Amos](https://github.com/bigmosi)
- Twitter: [Kinyera Amos](https://twitter.com/kinyera_amos)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/kinyera-amos/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/teckim/carbook-api.git/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Original design idea by [Murat Korkmaz on Behance.]('https://www.behance.net/muratk')

## 📝 License

This project is [MIT](./MIT.md) licensed.
