require 'page-object'

class Edit
  include PageObject
  page_url "http://localhost:8080/baseball/add"

  text_field(:cover, :id => 'cover')
  text_field(:name, :id => 'name')
  text_field(:number, :id => 'number')
  text_field(:atBats, :id => 'atBats')
  text_field(:hits, :id => 'hits')


  button(:update, :name => 'update')

end