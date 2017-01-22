NOT_FOUND = -1
def ruby_chop(target, arr)
    return NOT_FOUND if arr.length == 0
    index = arr.find_index(target)
    return NOT_FOUND if index.nil?
    index
end