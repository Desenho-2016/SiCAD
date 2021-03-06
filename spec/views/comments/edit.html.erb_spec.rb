require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :user_id => 1,
      :discipline_id => 1,
      :body => "MyString"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_discipline_id[name=?]", "comment[discipline_id]"

      assert_select "input#comment_body[name=?]", "comment[body]"
    end
  end
end
