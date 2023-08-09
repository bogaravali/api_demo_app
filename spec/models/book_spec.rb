require "rails_helper"

describe Book, type: :model do
  describe "validations" do
    context "without an email" do
      it "is invalid without an email" do
        user = FactoryGirl.build(:user, first_name: 'Shama', last_name: 'Shah', email: nil)
        
        expect(user).to be_invalid
        expect(user.errors.attribute_names).to include(:email)
      end
    end

    context "when there are duplicate emails" do
      it "is invalid" do
        user = FactoryGirl.create(:user, email: "test@test.com")
        invalid_user = build(:user, email: "test@test.com")
        expect(invalid_user).to be_invalid
      end
    end
  end
end