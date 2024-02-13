# frozen_string_literal: true

class CreateGreetings < ActiveRecord::Migration[7.1]
  def change
    create_table :greetings, &:timestamps
  end
end
