class MySelectQuery
    
    #  Constructor
    def initialize(csv_content)
        @csv = csv_content.split("\n")

    end

    # Function to search CSV data
    def where(column_name, criteria)
        headings = @csv[0].split(",")
        for i in 0..headings.length - 1
            if headings[i] == column_name
                idx = i
                break
            end
        end

        result = []

        for i in 1..@csv.length - 1
            line = @csv[i].split(",")
            if line[idx] == criteria
                result[result.length] = @csv[i]
            end
        end

        return result
    end

end

# test = MySelectQuery.new("name,year_start,year_end,position,height,weight,birth_date,college\nAlaa Abdelnaby,1991,1995,F-C,6-10,240,'June 24, 1968',Duke University\nZaid Abdul-Aziz,1969,1978,C-F,6-9,235,'April 7, 1946',Iowa State University\nKareem Abdul-Jabbar,1970,1989,C,7-2,225,'April 16, 1947','University of California, Los Angeles
# Mahmoud Abdul-Rauf,1991,2001,G,6-1,162,'March 9, 1969',Louisiana State University\n")

# puts test.where("name", "Alaa Abdelnaby")