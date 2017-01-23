NOT_FOUND = -1
def ruby_chop(target, arr)
    return NOT_FOUND if arr.length == 0
    index = arr.find_index(target)
    return NOT_FOUND if index.nil?
    index
end

def custom_chop(target, arr)
    index = 0
    for item in arr
        return index if item === target
        index += 1
    end
    NOT_FOUND
end