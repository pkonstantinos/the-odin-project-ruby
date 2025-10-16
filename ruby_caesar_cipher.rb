
def casear_cipher(text, shift_value)
  abc = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
  temp = text.split("").map!() {|char| char.downcase}
  temp.each_with_index do |char,indx|
    if (abc.include?(char))
      if ((abc.index(char) + shift_value) > 25)
        if (text[indx] == text[indx].upcase)
          temp[indx] = abc[((abc.index(char) + shift_value) % abc.length)].upcase
        else
          temp[indx] = abc[((abc.index(char) + shift_value) % abc.length)]
        end
      else
        if (text[indx] == text[indx].upcase)
          temp[indx] = abc[abc.index(char) + shift_value].upcase
        else
          temp[indx] = abc[abc.index(char) + shift_value]
        end
      end
        
    end
  end
  p temp.join
end

casear_cipher("What a string!", 100)