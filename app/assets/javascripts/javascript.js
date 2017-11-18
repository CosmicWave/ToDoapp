var quotes = [
	'Whatever the mind of man can conceive and believe, it can achieve. –Napoleon Hill',
	'Strive not to be a success, but rather to be of value. –Albert Einstein',
	'Winning isn’t everything, but wanting to win is. –Vince Lombardi',
	'Whether you think you can or you think you can’t, you’re right. –Henry Ford',
	'The best revenge is massive success. –Frank Sinatra',
	'Either you run the day, or the day runs you. –Jim Rohn',
	'I attribute my success to this: I never gave or took any excuse. –Florence Nightingale',
	'The mind is everything. What you think you become. –Buddha'
]

function genQuote() {
	var randomNumber = Math.floor(Math.random() * (quotes.length));
	document.getElementById('quoteDisplay').innerHTML = quotes[randomNumber];
}





