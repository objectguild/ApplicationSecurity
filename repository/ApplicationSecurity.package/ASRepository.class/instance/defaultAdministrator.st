accessing
defaultAdministrator
	" Answer an <ASUser> for administrative purposes "
	
	| saltAssoc |
	
	saltAssoc := (ASPasswordCreator new plainTextPassword: self defaultAdminPassword) salt.
	^ ASUser new
		username: 'Admin';
		password: saltAssoc key;
		salt: saltAssoc value;
		registrationDate: Date today;
		yourself