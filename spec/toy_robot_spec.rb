require "rspec"
require_relative "../toy_robot"

RSpec.describe "ToyRobot" do
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


  describe '#place' do
   specify 'When x is less than zero it should raise an exception' do
      expect { subject.place(-1,0) }.to raise_error(InvalidPositionError, "Invalid Position, -1, 0")
    end
   specify 'When y is less than zero it should raise an exception' do
      expect { subject.place(0,-1) }.to raise_error(InvalidPositionError, "Invalid Position, 0, -1")
    end
  end

end
