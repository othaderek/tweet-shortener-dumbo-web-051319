# Write your code here.
def dictionary
  dictionary = {
  "hello" => "hi",
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "For" => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => "@",
  'and' => '&'
  }
end

def word_substituter(tweets)
  words = tweets.split # This splits the tweet string into an array to be iterated over.
  dictionary_word = dictionary.keys # This saves all of the dictionary keys in a variable
  words.collect do |string| # we use collect to iterate here because we are returning the changes made to our array
      if dictionary_word.include?(string.downcase) # checks the array where we stored the keys if it contains "string"
          string = dictionary[string] # Saves dictionary of string into a string array
      else
        string # Returns string
      end
end.join(" ") # Joins the string
end

def bulk_tweet_shortener(arr)
  arr.each do |string|
    puts word_substituter(string)
  end
end


def selective_tweet_shortener(tweets)
  if tweets.length > 140 
    return word_substituter(tweets)
  else
    tweets
  end
end

 def shortened_tweet_truncator(tweets)
    if tweets.length > 140
      return tweets[0..136] + "..."
    else
      tweets
    end
end