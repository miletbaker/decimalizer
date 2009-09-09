require File.dirname(__FILE__) + '/spec_helper'

class TestClass
	include Decimalizer
	decimalize :number
	
end

describe TestClass do

	before do
		@test = TestClass.new
		@test.stub!(:write_attribute)
		@test.stub!(:read_attribute).and_return(45)
	end

	it "should have been generated number_as_decimal" do
	  @test.should respond_to(:number_as_decimal)
	end
	
	it "should have been generated number_as_decimal=" do
	  @test.should respond_to(:number_as_decimal=)
	end

	it "should have been generated number_as_decimal_before_type_cast" do
	  @test.should respond_to(:number_as_decimal_before_type_cast)
	end

	it "should convert 23.50 on number_as_decimal to 2350 in number" do
		@test.should_receive(:write_attribute).with(:number,2350)
		@test.number_as_decimal = 23.50
	end

	it "should return stored number as 0.45" do
	  @test.should_receive(:read_attribute).and_return(45)
		@test.number_as_decimal.should == 0.45
	end

	it "should store what ever was passed to it in _before_type_cast" do
	  bob = "bob"
		@test.number_as_decimal = bob
		@test.number_as_decimal_before_type_cast.should == bob
	end

end