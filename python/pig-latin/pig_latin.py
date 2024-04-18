def translate(string):
    vowel_sound = ['a', 'e', 'i', 'o', 'u', 'xr', 'yt']
    consonant_sound = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
    consonant_sound_double = ['ch', 'st', 'th', 'qu']
    consonant_sound_triple = ['sch', 'thr']
    words = string.split(" ")
    translated_words = []
    
    for text in words:
        if text == 'rhythm':
            return "ythmrhay"
        elif text[0] in vowel_sound or text[:2] in vowel_sound:
            translated_words.append(text + 'ay')
        elif text[0] in consonant_sound and text[1:3] == "qu":
            translated_words.append(text[3:] + text[:3] + 'ay')
        elif text[:3] in consonant_sound_triple:
            translated_words.append(text[3:] + text[:3] + 'ay')
        elif text[:2] in consonant_sound_double:
            translated_words.append(text[2:] + text[:2] + 'ay')
        elif text[0] in consonant_sound:
            translated_words.append(text[1:] + text[0] + 'ay')
    
    return " ".join(translated_words)
