## BookMyMovie

A BookMyMovie is a movie ticket booking application that allows users to booking Movie tickets as per the selected time and location.

## Getting Started

1. Clone the repository:

   ```
   $ git clone https://github.com/JayaramVenugoapl/BookMyMovie
   ```

2. Navigate into the cloned repository folder:

   ```
   $ cd BookMyMovie
   ```

3. Install dependencies:

   ```
   $ bundle install
   ```


## Usage

1. Start rails server

   ```
   $ rails s
   ```

2. Navigate to your browser and type in: http://localhost:3000

## Application Version

~ Ruby version = 2.6.3<br>
~ Rails version = 5.2.3

## External Dependencies/Gems

~ Rails Framework<br>
~ Devise<br>
~ PostgreSQL<br>
~ Puma Web Server<br>
~ Factory Bot<br>
~ RSpec<br>
~ Database Cleaner<br>


## Running Tests

1. Make sure "rspec" is installed by running:

   ```sh
       $ bundle show rspec
   ```

   If a path is listed, then rspec is installed.

2. Run rspec for the spec folder through bundle:
   ```sh
       $ bundle exec rspec spec
   ```