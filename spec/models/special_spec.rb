require 'rails_helper'

describe Special, type: :model do
  before :each do
    @comedian_1 = Comedian.create!(name: "Comedian_1", age: "30", city: "City_1")
    @comedian_2 = Comedian.create(name: "Comedian_2", age: "50", city: "City_2")
    @comedian_3 = Comedian.create(name: "Comedian_3", age: "100", city: "City_3")
    @special_1 = @comedian_1.specials.create( title: "Title 1", runtime: 100, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_2 = @comedian_1.specials.create(title: "Title 2", runtime: 150, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_3 = @comedian_2.specials.create(title: "Title 3", runtime: 50, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
    @special_4 = @comedian_3.specials.create(title: "Title 4", runtime: 10, thumbnail: "http://ingstadmedia.com/kduz/wp-content/uploads/sites/7/2018/08/microphone-clipart-1.jpg")
  end

    describe 'Validations' do
        it { should validate_presence_of :title}
        it { should validate_presence_of :runtime}
        it { should validate_presence_of :thumbnail}
    end

    describe 'Relationships' do
        it { should belong_to :comedian}
    end

    describe 'Class Methods' do
      it '.average_length' do
        actual = Special.average_length

        expect(actual).to eq(77.5)
      end

    end
end
