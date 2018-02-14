RSpec.describe Task, type: :mdoel do
  describe "New task" do
    let(:new_task) { Task.create(title: 'Run 21k in USA', description: 'Run a half marathon in NY') }
    it "has title" do
      expect(new_task.title).to eq 'Run 21k in USA'
    end

    it "has description" do
      expect(new_task.description).to eq 'Run a half marathon in NY'
    end
  end


end