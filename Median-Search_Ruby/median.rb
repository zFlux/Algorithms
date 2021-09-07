module Median
    # @param {Integer[]} nums1
    # @param {Integer[]} nums2
    # @return {Float}
    def find_median_sorted_arrays(nums1, nums2)

        # special cases:
        if nums1.empty?
            return median_of_sorted_arr(nums2)
        end

        if nums2.empty?
            return median_of_sorted_arr(nums1)
        end

        if nums1.size == 1 && nums2.size == 1
            return (nums1.first + nums2.first) / 2.0
        end

        # general case
        arrays = arrays_in_order_of_size(nums1, nums2)
        nums1 = arrays.first
        nums2 = arrays.last
        combined_size = nums1.size + nums2.size
        left_half_of_combined_array_size = (combined_size + 1) / 2

        # set up initial conditions 
        nums1_min_count = 0
        nums1_max_count = nums1.size
        nums1_count = (nums1_max_count - nums1_min_count) / 2
        nums2_count = left_half_of_combined_array_size - nums1_count

        while nums1_min_count <= nums1_max_count
            nums1_count =  nums1_min_count + ((nums1_max_count - nums1_min_count) / 2)
            nums2_count = left_half_of_combined_array_size - nums1_count
            nums1_next_val = nums1[nums1_count]
            nums2_next_val = nums2[nums2_count]
            nums1_val = nums1_count-1 > -1 ? nums1[nums1_count-1] : nil
            nums2_val = nums2_count-1 > -1 ? nums2[nums2_count-1] : nil
            if !nums2_next_val.nil? && !nums1_val.nil? && nums1_val > nums2_next_val
                nums1_max_count = nums1_max_count - 1  
            elsif !nums1_next_val.nil? && !nums2_val.nil? && nums2_val > nums1_next_val
                nums1_min_count =  nums1_min_count + 1
            else
                left_half_end_val = [nums1_val, nums2_val].filter{ |i| i if !i.nil?}.max()
                if combined_size % 2 == 0
                    right_half_end_val = [nums1_next_val, nums2_next_val].filter{ |i| i if !i.nil?}.min()
                    return (left_half_end_val + right_half_end_val) / 2.0
                else
                    return left_half_end_val
                end
            end
        end
    end

    def arrays_in_order_of_size(arr1, arr2)
        if arr1.size > arr2.size 
            nums1 = arr2
            nums2 = arr1
        else
            nums1 = arr1
            nums2 = arr2
        end
        return [nums1, nums2]
    end

    def average(num1, num2)
        (num1 + num2) / 2.0
    end

    def mean(arr)
        arr.sum(0.0) / arr.size
    end

    def median_of_sorted_arr(array)
        return nil if array.empty?
        m_pos = array.size / 2
        return array.size % 2 == 1 ? array[m_pos] : mean(array[m_pos-1..m_pos])
    end

end