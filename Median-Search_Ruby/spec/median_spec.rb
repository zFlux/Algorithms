require './median.rb'

describe Median do
    include Median

    describe "#find_median_sorted_arrays" do

        context "two non overlapping arrays in ascending order" do
            it "returns the median" do
                expect(find_median_sorted_arrays([1,2,3,4], [5,6,7,8])).to eq(4.5)
            end
        end

        context "two non overlapping arrays in reverse order" do
            it "returns the median" do
                expect(find_median_sorted_arrays([5,6,7,8], [1,2,3,4])).to eq(4.5)
            end
        end

        context "two non overlapping arrays of different sizes" do
            it "returns the median" do
                expect(find_median_sorted_arrays([5,6,7,8,9], [1,2,3,4])).to eq(5)
            end
        end

        context "two single item arrays" do
            it "returns the median" do
                expect(find_median_sorted_arrays([1], [2])).to eq(1.5)
            end
        end

        context "two empty arrays" do
            it "returns the median" do
                expect(find_median_sorted_arrays([], [])).to eq(nil)
            end
        end

        context "left array is empty" do
            it "returns the median" do
                expect(find_median_sorted_arrays([], [1])).to eq(1)
            end
        end

        context "right array is empty" do
            it "returns the median" do
                expect(find_median_sorted_arrays([1,2], [])).to eq(1.5)
            end
        end

        context "non overlapping array with an even total count" do
            it "returns the median" do
                expect(find_median_sorted_arrays([7,8], [1,2,3,4,5,6])).to eq(4.5)
            end
        end

        context "mixed arrays" do
            it "returns the median" do
                expect(find_median_sorted_arrays([3], [1,2,3,4,5,6])).to eq(3)
                expect(find_median_sorted_arrays([1,3], [2])).to eq(2)
                expect(find_median_sorted_arrays([1,3], [2,7])).to eq(2.5)
                expect(find_median_sorted_arrays([-1,3], [1,2])).to eq(1.5)
                expect(find_median_sorted_arrays([1], [2,3,4])).to eq(2.5)
                expect(find_median_sorted_arrays([2], [1,3,4])).to eq(2.5)
                expect(find_median_sorted_arrays([3], [1,2,4])).to eq(2.5)
            end
        end
        
    end
end