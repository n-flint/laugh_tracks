require 'rails_helper'



RSpec.describe 'when visitor visits comedians index page', type: :feature do

  before :each do
    @comedian_1 = Comedian.create!(name: "Comedian_1", age: "30", city: "City_1")
    @comedian_2 = Comedian.create(name: "Comedian_2", age: "50", city: "City_2")
    @Special_1 = @comedian_1.specials.create( title: "Title 1", runtime: 100, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @Special_2 = @comedian_2.specials.create(title: "Title 2", runtime: 50, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
  end

    it 'can see list of all comedians' do

      visit comedians_path

      expect(page).to have_content("Laugh Tracks")

      within  "#comedian-#{@comedian_1.id}" do
        expect(page).to have_content(@comedian_1.name)
        expect(page).to have_content(@comedian_1.age)
        expect(page).to have_content(@comedian_1.city)
        end

      within  "#comedian-#{@comedian_2.id}" do
        expect(page).to have_content(@comedian_2.name)
        expect(page).to have_content(@comedian_2.age)
        expect(page).to have_content(@comedian_2.city)
        end
      end


end