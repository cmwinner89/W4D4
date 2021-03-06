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

    def stock_picker
        profits = []
        best_prof = self[1] - self[0]

        self.each_with_index do |el1, idx1|
            self.each_with_index do |el2, idx2|
                if idx2 > idx1
                    if el2 - el1 > best_prof
                        best_prof = el2 - el1
                        profits = [idx1, idx2]
                    end
                end
            end
        end
        profits
    end
end