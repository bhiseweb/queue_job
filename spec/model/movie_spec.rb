require 'rails_helper'

RSpec.describe Movie, type: :model do
  
  describe "should be check validation" do
    it "should not be movie title present" do
      movie = Movie.new(title: nil).save
      expect(movie).to eq(false)
    end

    it 'should be movie title present' do
      queue = Movie.new(title: "jine do").save
      expect(queue).to eq(true)
    end
  end
end
