require 'rails_helper'



RSpec.describe 'when visitor visits comedians index page', type: :feature do

  before :each do
    @comedian_1 = Comedian.create!(name: "Comedian_1", age: "34", city: "City_1")
    @comedian_2 = Comedian.create(name: "Comedian_2", age: "34", city: "City_2")
    @comedian_3 = Comedian.create(name: "Comedian_3", age: "100", city: "City_2")
    @special_1 = @comedian_1.specials.create( title: "Title 1", runtime: 100, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_2 = @comedian_1.specials.create(title: "Title 2", runtime: 150, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_3 = @comedian_2.specials.create(title: "Title 3", runtime: 50, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_4 = @comedian_3.specials.create(title: "Title 4", runtime: 10, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
  end

    it 'can see list of all comedians' do

      visit comedians_path

      expect(page).to have_content("Laugh Tracks")

      within  "#comedian-#{@comedian_1.id}" do
        expect(page).to have_content(@comedian_1.name)
        expect(page).to have_content(@comedian_1.age)
        expect(page).to have_content(@comedian_1.city)
        expect(page).to_not have_content(@comedian_2.name)
      end

      within  "#comedian-#{@comedian_2.id}" do
        expect(page).to have_content(@comedian_2.name)
        expect(page).to have_content(@comedian_2.age)
        expect(page).to have_content(@comedian_2.city)
      end
    end

    it 'can see a list of all specials for each comedian' do

      visit comedians_path

      within  "#comedian-#{@comedian_1.id}" do
        within  "#special-#{@special_1.id}" do
          expect(page).to have_content(@special_1.title)
          expect(page).to have_content(@special_1.runtime)
          expect(page).to have_css("img[src*='#{@special_1.thumbnail}']")
          expect(page).to_not have_content(@special_3.title)
        end
      end
    end

    it 'can see statistics of all the comedians' do

      visit comedians_path

      within  ".statistics" do
        within  ".avg_age" do
          expect(page).to have_content("Average Age: #{Comedian.average_age}")
        end
        within  ".avg_runtime" do
          expect(page).to have_content("Average Special Runtime (Mins): #{Special.average_length}")
        end
        within  ".cities" do
          expect(page).to have_content("Unique Cities:")
          expect(page).to have_content("#{@comedian_1.city}")
          expect(page).to have_content("#{@comedian_2.city}")
        end
      end
    end

    it 'can search with query params' do
      visit comedians_path(age: 34)

      expect(page).to have_content("#{@comedian_1.name}")
      expect(page).to have_content("#{@comedian_2.name}")
      expect(page).to_not have_content("#{@comedian_3.name}")
    end

    it 'stats change with query params' do
      visit comedians_path(age: 34)

      within  ".statistics" do
        within  ".avg_age" do
          expect(page).to have_content("Average Age: 34")
        end
        # within  ".avg_runtime" do
        #   expect(page).to have_content("Average Special Runtime (Mins): 100")
        # end
        within  ".cities" do
          expect(page).to have_content("Unique Cities:")
          expect(page).to have_content("#{@comedian_1.city}")
          expect(page).to have_content("#{@comedian_2.city}")
        end
      end
    end
end
