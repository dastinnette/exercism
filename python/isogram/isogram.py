import re

def is_isogram(sentence):
    uniform_sentence = re.sub("[^A-Za-z]","",sentence).lower()
    
    for char in uniform_sentence:
        if uniform_sentence.count(char) > 1:
            return False

    return True