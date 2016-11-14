describe User do

  before(:each) 
    @user = User.new(email: 'user@example.com')

  subject @user 

  it should respond_to(:email) 

  it "#email retorna uma string" do
    expect(@user.email).to match 'user@example.com'
  end

end
