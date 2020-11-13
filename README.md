Geodata
==============

Geodata provides a mechanism to get the continent for a given country, or
to get the countries given a continent.  Effort has been made to make the
library very light weight and efficient.

Countries are returned as a hash in the following format:

```ruby
{
  :name => 'Turkey, Republic of',
  :continent_codes => ['EU', 'AS'],
  :alpha_2_code => 'TR',
  :alpha_3_code => 'TUR',
  :numeric_code => 792
}
```

The Turkey example demonstrates how continent codes are given as an array, as
some countries can belong to multiple continents.  Countries which only belong
to one continent are also given as an array.


Setup
---------

Let's install config files:

````shell
$ rails generate geodata:install
````

This command will generate `config/initializers/geodata.rb` and `config/locales/geodata.yml`.
This will load geo data when application start. 
You can customize data directly in the yml file.

Usage
---------

### By country

There are a few methods to select a country, based on ISO 3166-1 codes.  These
all return a single country in the format above, or `nil` if not found.

```RUBY
Geodata::Country.find_by(numeric_code: 250)
Geodata::Country.find_by(alpha_2_code: 'FR')
Geodata::Country.find_by(alpha_3_code: 'FRA')
```

### By continent

The following function takes a continent code and returns a random country 
in the format above, or nil if the continent is invalid.

```ruby
Geodata::Country.find_by(continent_code: 'EU')
```

The following function takes a continent code and returns an array of countries
in the format above, or nil if the continent is invalid.

```ruby
Geodata::Country.where(continent_code: 'EU')
```

Continent codes and names are defined in your app `config/locals/geodata.yml`.

### Getting continent name from a code

There is a helper method to get the continent name from the code, as codes are
used inside the country hashes.

```ruby
Geodata::Continent.name('EU')
```
