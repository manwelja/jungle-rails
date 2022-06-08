# Jungle

A mini e-commerce application built with Rails 6.1.  It is an enhanced version that originated a template created for purposes of teaching Rails by example.

A number of enhancements 
## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Screen Shots

### 0. About Us
!["About Us"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_aboutus.png)

### 1. Main Index
!["Main Index Page"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_index.png)

### 2. Products
!["Products Page"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_product.png)

### 3. Background Image
!["Background Image"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_background.png)

### 4. Admin Dashboard
!["Admin Dashboard"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_admin_dashboard.png)

### 5. Admin Categories
!["Admin Categories"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_admin_categories.png)

### 6. Admin All Products
!["Admin All Products"](https://github.com/manwelja/jungle-rails/blob/master/docs/jungle_admin_allproducts.png)

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
