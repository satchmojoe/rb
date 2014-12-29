require 'rails_helper'

RSpec.describe Permission, :type => :model do
  it {should validate_presence_of :user_id}
  it {should validate_presence_of :form_id}

  context 'when creating new permissions' do
    before :all do
      @permission = create(:permission)
    end

    it 'should set default values for privileges' do
      expect(@permission.view_entries).to eq(false)
      expect(@permission.edit_entries).to eq(false)
      expect(@permission.edit_form).to eq(false)
    end

  end
end
