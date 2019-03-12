require 'rails_helper'

describe Special, type: :model do
    describe 'Validations' do
        it { should validate_presence_of :title}
        it { should validate_presence_of :runtime}
        it { should validate_presence_of :thumbnail}
    end
end