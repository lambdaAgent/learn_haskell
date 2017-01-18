toPart recipient = (\recipient -> "Dear " ++ recipient ++ ",\n") recipient
bodyPart bookTitle = (\bookTitle -> "Thanks for buying " ++ bookTitle ++ ".\n") bookTitle
fromPart author = (\author -> "Thanks,\n" ++ author) author

createEmail recipient bookTitle author = (toPart recipient) ++
																				 (bodyPart bookTitle) ++
																				 (fromPart author)

createEmailB recipient title author = (\recipient -> (\title -> (\author -> (toPart recipient) ++ (bodyPart title) ++ (fromPart author)) author) title) recipient 

main = do
	print "who is the email for?"
	recipient <- getLine
	print "What is the Title?"
	title <- getLine
	print "Who is the author?"
	author <- getLine
	print (createEmailB recipient title author)