require 'rails_helper'

describe Contact do
  # タイトルと内容があれば有効な状態であること
  it "is valid with name" do
    contact = Contact.new(name: '12', email: '22@pp', content: 'cc')
    expect(contact).to be_valid
  end

  #タイトルがなければ無効であること
  it "is invalid without a email" do
    contact = Contact.new
    expect(contact).not_to be_valid
  end

  #タイトルがなければ無効であること
  it "is valid with email" do
    contact = Contact.new
    contact.valid?
    expect(contact.errors[:email]).to include("を入力してください")
  end
end
