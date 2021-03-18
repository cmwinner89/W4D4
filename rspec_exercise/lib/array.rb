class Array

    def my_uniq
        no_dups = []
        self.each do |ele|
            unless no_dups.include?(ele)
                no_dups << ele
            end
        end
        no_dups
    end

    def two_sum 
        sums = []
        self.each_index do |idx1|
            self.each_index do |idx2|
               if idx2 > idx1
                sums << [idx1, idx2] if self[idx1] + self[idx2] == 0
               end
            end
        end
        sums
    end

    def my_transpose

        self.each {|row| raise IndexError if row.length != size }

        transposed = []

        self.each_index do |row|
            rows = []
            self.each_index do |col|
                rows << self[col][row]
            end
            transposed << rows
        end

        transposed
    end

end