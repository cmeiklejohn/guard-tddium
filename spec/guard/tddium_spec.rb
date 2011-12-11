require 'spec_helper'

module Guard
  describe Tddium do 
    subject { Tddium.new } 

    it 'runs tddium spec on valid file change' do 
      subject.runner.should_receive(:run)
      subject.run_on_change(['.git/objects/1'])
    end

    it 'does not run tddium spec on invalid file change' do 
      subject.runner.should_not_receive(:run)
      subject.run_on_change([])
    end

    it 'does not run tddium spec on start' do
      subject.runner.should_not_receive(:run)
      subject.start
    end
  end
end
