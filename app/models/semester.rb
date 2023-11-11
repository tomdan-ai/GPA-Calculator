# app/models/semester.rb

class Semester < ApplicationRecord
    has_many :courses
    has_many :grades, through: :courses
    accepts_nested_attributes_for :courses
  end
  