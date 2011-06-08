require 'spec_helper'

describe Virtus, '.determine_type' do

  (Virtus::Attribute::Object.descendants - [
   Virtus::Attribute::Boolean,
   Virtus::Attribute::Object,
   Virtus::Attribute::Numeric ]).each do |attribute_class|

    context "with #{attribute_primitive = attribute_class.primitive}" do
      subject { described_class.determine_type(attribute_primitive) }

      it "returns the corresponding attribute class" do
        subject.should be(attribute_class)
      end
    end

  end

end
