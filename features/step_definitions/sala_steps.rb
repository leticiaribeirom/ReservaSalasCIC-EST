Given /the following salas exist/ do |salas_table|
  salas_table.hashes.each do |sala|
    Sala.create!(sala)
  end
end

Then /I should see all the salas/ do
  assert page.all("table#salas tr").size + 2 == Sala.count()
end