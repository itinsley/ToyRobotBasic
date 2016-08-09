require "rspec"
require_relative "../toy_robot"

RSpec.describe "ToyRobot" do
  describe 'initialise' do
    subject{ ToyRobot.new }
    specify 'that ToyRobot x is set to 0' do
      expect(subject.x).to eq(0)
    end

    specify 'that ToyRobot y is set to 0' do
      expect(subject.y).to eq(0)
    end

    specify 'that ToyRobot f is set to EAST' do
      expect(subject.f).to eq(:east)
    end
  end

  describe 'place' do
    subject{ ToyRobot.new }
    specify 'When x is less than zero it should raise an exception' do
      expect { subject.place(-1,0) }.to raise_error(InvalidPositionError, "Invalid Position, -1, 0")
    end
    specify 'When y is less than zero it should raise an exception' do
      expect { subject.place(0,-1) }.to raise_error(InvalidPositionError, "Invalid Position, 0, -1")
    end
    specify 'When valid it should move Robot to position' do
      subject.place(3,4)
      subject.x.should eql(3)
      subject.y.should eql(4)
    end
  end

end
