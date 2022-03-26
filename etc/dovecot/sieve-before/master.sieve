require ["fileinto"];

if allof (header :contains "Authentication-Results" "dmarc=fail",
		header :contains "Authentication-Results" "p=quarantine") {
	fileinto "Junk";
	stop;
}

if allof (header :contains "Authentication-Results" "dmarc=fail",
		header :contains "Authentication-Results" "p=reject") {
	discard;
	stop;
}
