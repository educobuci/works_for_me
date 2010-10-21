require 'spec_helper'

describe "authors/edit.html.erb" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :new_record? => false,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => author_path(@author), :method => "post" do
      assert_select "input#author_name", :name => "author[name]"
      assert_select "input#author_email", :name => "author[email]"
    end
  end
end
