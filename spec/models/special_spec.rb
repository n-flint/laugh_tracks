require 'rails_helper'

describe Special, type: :model do
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

        expect(actual).to eq(100)
      end

    end
end
