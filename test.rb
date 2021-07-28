def score(dice)
    # You need to write this method
    sum = 0
    count_elements = Array.new(6,0)
    unique_dice = dice.uniq
    unique_dice.each { |item| count_elements[item -1] = dice.count(item)} 
    for i in 0 ... count_elements.length
        if count_elements[i] >= 3 
            i + 1 == 1 ? sum += 1000 : sum += (i +1) * 100
            count_elements[i] -= 3
        end

        if count_elements[i] >= 1
            if i + 1 == 1 
                sum += count_elements[i] * 100
            elsif i + 1 == 5
                sum += count_elements[i] * 50
            end
        end
    end
    sum
end



  score([5])
