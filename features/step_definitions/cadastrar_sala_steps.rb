When(/^click in "([^"]*)"$/) do |link|
	click_link (link)
end

Then(/^I will be on cadastrar sala page$/) do 
	expect(current_path).to eq('salas/new')
end

And(/^fill the form$/) do
	find(:xpath, "//form")
	#fill_in('Nome', :with => 'John')
	#fill_in 'sala_nome', :with => 'text you want to fill in'
	#fill_in 'Nome', :with => "Lab"
	#fill_in 'Qtd lugares', :with => "20"
	#fill_in 'Disponivel', :with => "True"
	#click_button "Cadastrar sala"

end

Then(/^I Should see my register in the list$/) do
	have_content ('Lab')
end
