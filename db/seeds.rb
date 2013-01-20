# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@input = Inoutput.create! body: 'input'
@output = Inoutput.create! body: 'output'

Document.create!(
  name: 'Welcome, you',
  description: 'Just basic document',
  purpose: 'To be a test example',
  metrics: 'Some metrics'
)

@operation = Operation.create!(
  document_id: 1,
  name: 'Operation #1',
  goal: 'Testing',
  worker: 'Developer',
  steps: '1.2.3',
  exceptions: 'Some exceptions'
  #connections: [@input, @output]
)

Connection.create! operation: @operation, inoutput: @input, way: 'input'
Connection.create! operation: @operation, inoutput: @output, way: 'output'





