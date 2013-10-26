require 'spec_helper'

describe "receipts/edit" do
  before(:each) do
    @receipt = assign(:receipt, stub_model(Receipt,
      :member_id => 1,
      :month => "MyString",
      :amount => 1,
      :method => "MyString",
      :status => "MyString",
      :debit_id => 1,
      :note => "MyText"
    ))
  end

  it "renders the edit receipt form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", receipt_path(@receipt), "post" do
      assert_select "input#receipt_member_id[name=?]", "receipt[member_id]"
      assert_select "input#receipt_month[name=?]", "receipt[month]"
      assert_select "input#receipt_amount[name=?]", "receipt[amount]"
      assert_select "input#receipt_method[name=?]", "receipt[method]"
      assert_select "input#receipt_status[name=?]", "receipt[status]"
      assert_select "input#receipt_debit_id[name=?]", "receipt[debit_id]"
      assert_select "textarea#receipt_note[name=?]", "receipt[note]"
    end
  end
end