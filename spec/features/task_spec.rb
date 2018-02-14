RSpec.describe Task, type: :mdoel do
  describe "has an empty constructor" do
    it "should be eq" do
      t = Task.create(title: 'Run 21k in USA', description: 'Run a half marathon in NY')
      expect(t.title).to eq 'Run 21k in USA'
    end
  end


end