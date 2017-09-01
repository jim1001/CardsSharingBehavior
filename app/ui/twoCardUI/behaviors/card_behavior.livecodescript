script "card_behavior"
#Set a custom variable "transcriptFile" for each card which holds the path of a text file to display for that card
#run once only in message box for card1
set the transcriptFile of card "card1" to levureAppFolder() & "/assets/Ch1Intro.txt"
#run once only in message box for card2
set the transcriptFile of card "card2" to levureAppFolder() & "/assets/Ch2Intro.txt"

on preOpenCard
   put the short name of me into field "cardTitle"
   set the HTMLText of field "transcript" to URL ("file:" & the transcriptFile of me)
end preOpenCard
