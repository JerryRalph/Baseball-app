require 'page-object'

class Schedule

  include PageObject

  page_url "http://localhost:8080/baseball/schedule"

  h1(:response, :id => 'header')





end