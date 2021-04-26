#Bubble sort

def bubble_sort(array)
  bandera = true
  loop do
    bandera = true
    array.each_with_index {
      |number, index|
      if index != array.length - 1
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          bandera = false
        end
      end
    }
    if bandera
      break
    end
  end
  array
end

print bubble_sort([2,11,3,7,4,5,10,1,9,0,8])
