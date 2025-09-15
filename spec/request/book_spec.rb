require 'rails_helper' 

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', author: 'person', price: 5)
    end
    
    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end
    
    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    it 'is invalid without author' do
        expect(Book.new(title: '1', author: nil, price: 5)).not_to be_valid
    end

    it "is invalid without price" do
        expect(Book.new(title: '1', author: 'guy', price: nil)).not_to be_valid
    end

end