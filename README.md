# SimpleInteractors

The Hanami::Utils (https://github.com/hanami/utils) used to include an implementation of the interactor pattern. But it no longer does, see https://github.com/hanami/utils/issues/401

This gem includes the original Hanami Interactor and it is a drop by replacement. You should be able to just include this gem and continue to use Hanami::Interactor as you used to.

My future goal is to create an alternative implementation of Interactor that is independent of Hanami.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple-interactors'
```

## Usage

```ruby
require 'hanami/interactor'

class YourClass
  include Hanami::Interactor

  def initialize(person:, current_user:)
    @person       = person
    @current_user = current_user
  end

  def call
    # do your business logic here.
  end
end
```

```ruby
class PeopleController < ApplicationController

  def create
    result = YourClass.new(person: person_params, current_user: current_user).call

    if result.success?
      redirect_to :index
    else
      render :new
    end
  end
end
```

## Copyright

Copyright © 2022 Gonzalo Rodríguez-Baltanás Díaz – Released under MIT License
