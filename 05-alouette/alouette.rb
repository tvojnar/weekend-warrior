class Alouette

  # @lyrics = File.read(File.dirname(__FILE__) + '/alouette_lyrics.txt').strip
  @refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
  @new_phrases = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  @end_verse = "Alouette!\nAlouette!\nA-a-a-ah"

  def self.lines_for_verse(verse_num)
    verses = []
    while verse_num >= 0
      verses << "Et " + @new_phrases[verse_num] + "!"
      verse_num -= 1
    end # while
    return verses
  end # lines_for_verse

  def self.verse(verse_num)
    verse = ""
    2.times do
      verse << "Je te plumerai " + @new_phrases[verse_num] + ".\n"
    end # times
    while verse_num >= 0
      2.times do
        verse << self.lines_for_verse(verse_num)[0] + "\n"
      end # times
      verse_num -= 1
    end # while
    verse << @end_verse
    return verse
  end # verse

  def self.sing
    song = ""
    i = 0
    while i < 8
      song << @refrain + "\n\n"
      song << self.verse(i) + "\n\n"
      i += 1
    end # while
    song << @refrain
    return song
  end # sing
end # Alouette
puts Alouette.sing
