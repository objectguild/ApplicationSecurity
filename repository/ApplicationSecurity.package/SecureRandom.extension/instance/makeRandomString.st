*ApplicationSecurity
makeRandomString
	" See comment in ASSaltCreator makeRandomString "

	^ (self nextBytes: 18) asString