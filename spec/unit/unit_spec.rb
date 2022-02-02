# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title:'harry potter', author:'J.K. Rowling', published_date:'2020-02-03', price:45)
  end
 
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    subject.author = nil
    subject.published_date = nil
    subject.price = nil
    expect(subject).not_to be_valid
  end
end
