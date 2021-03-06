Given (/^the following salas exist/) do |salas_table|
  salas_table.hashes.each do |sala|
    Sala.create!(sala)
  end
end

Then(/^I should see all the salas/) do 
  have_content ('sala 1')
  have_content ('sala 2')
  have_content ('sala 3')
  have_content ('sala 4')
  have_content ('sala 5')
end

Then (/I should see "(.*)" before "(.*)"/) do |e1, e2|
  expect(page.body.index(e1)).to be < page.body.index(e2)
end

