require 'pry'
def horoscope_generator

def text_one

  words = ["Today", "This week", "Soon", "Before you know it", "Now is the time that",
   "Your wise advice is that soon", "What you need to know is soon", "The stars say that",
    "All things being equal, ", "No doubt,", "All signs point to the fact that",
     "With Gemini rising,", "All signs say that", "The stars say that", "It is clear that"]

  output = words.sample
  return output
end


def text_two

words = ["meet", "earn", "find", "discover", "realize", "uncover", "come to terms with", "own", "come to realize"]

output = words.sample
return output

end

def text_three

  words = ["something that was lost", "something you forgot about",
     "something you never knew you deserved", "something important",
      "a fact from your history", "the facts surrounding an event from when you were younger",
       "a truth that was once considered false", "a fact that was once considered absurd or silly",
        "an item that was lost that had significance to you",
         "an item you own, like a broken watch or a broken clock",
          "a photograph in black and white. It's of a person who is no longer with us",
           "something from your childhood, such as a stuffed animal, toy or keepsake"]

           output = words.sample
           return output

end


def text_four

  words = ["mean the most to you", "become important to you", "become important to you once again",
   "start to mean something to you", "take on a new meaning to you", "take on new meaning in your life",
    "mean something to you", "make you re-think how you treated someone earlier in your life",
     "think about how you treat the people around you", "make you think about how you treat your children or family members",
      "look twice at the elderly and infirmed", "make you consider being more compassionate to those less fortunate than you",
       "make you think twice before taking a risk in your life", "make you rethink things",
        "give you pause to how you live your life", "force you to remember things gone by"]

        output = words.sample
        return output
end

def text_five

  words = ["Sieze this day as your own", "Don't let this opportunity pass you by",
     "Own this day", "Make this day your own", "Consider what you will do about this",
      "Remember that this is your opportunity and no one can take it away from you",
       "So man up and make it happen", "Take this as your gentle nudge in the right direction",
        "So just consider this as you go into today", "If this doesn't make sense, it will as your day goes on",
         "It's just a word of wisdom", "Something to bear in mind as you go about your day",
          "This is better advice than lucky numbers", "Don't just sit around, take this advice and run with it",
           "Now you know, so take action", "This means a lot to you, so act on it",
            "Why not get started with the rest of your life today",
            "You can be anything you want, so don't wait any longer",
            "You are a strong, sexy beast, so just get serious and make it happen",
             "The power is within you, so just make it happen"]

             output = words.sample
             return output
end

def text_six
  words = ["When situations like this arise, you can warm your soul with",
     "The only way to handle this oncoming life change is to drink",
      "What you need to always remember is that at the end of the day you could aways use a",
       "If this get's you down the thing to get you up is a",
        "The only cure we can perscribe for this is to drink a",
         "When the moons align for you in this way, it calls for a",
          "Be strong in your will, and drink a strong"]

                       output = words.sample
                       return output
end

final_horoscope = ["#{text_one} you will #{text_two} #{text_three}, and it will #{text_four}. #{text_five}. #{text_six}"]
return final_horoscope
end
puts horoscope_generator
