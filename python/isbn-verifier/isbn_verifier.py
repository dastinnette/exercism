def is_valid(isbn):
    numbers = isbn.replace("-", "")

    if "X" in numbers and numbers[-1] != "X":
        return False
    
    list = []
    for letter in numbers:
        if letter == "X":
            list.append(10)
        elif letter.isnumeric() == False:
            return False
        else:
            list.append(int(letter))
    
    if len(list) != 10:
        return False
    
    isbn_check = (list[0] * 10 + list[1] * 9 + list[2] * 8 + list[3] * 7 + list[4] * 6 + list[5] * 5 + list[6] * 4 + list[7] * 3 + list[8] * 2 + list[9] * 1) % 11

    if isbn_check == 0:
        return True
    else:
        return False