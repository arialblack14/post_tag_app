require 'rails_helper'

RSpec.describe Post, type: :model do

  before do
    @post = Post.new(title: "Lorem Ipsum", body: "Lorem ipsum dolor sit ametum.")
  end

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:body) }
  it { should be_valid }

  describe "with blank body" do
    before { @post.body = " " }
    it { should_not be_valid}
  end

  describe "with blank title" do
    before { @post.title = " " }
    it { should_not be_valid}
  end
end
