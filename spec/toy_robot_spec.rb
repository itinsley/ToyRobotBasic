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
    expect(subject.f).to eq('EAST')
  end
end
