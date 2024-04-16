def is_isogram(word):
    clean_word = [i for i in word.lower() if i.isalpha()]
    
    for char in clean_word:
        if clean_word.count(char) > 1:
            return False

    return True