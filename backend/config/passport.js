var passport = require("passport");
var GoogleStrategy = require("passport-google-oauth").OAuth2Strategy;

passport.serializeUser(function(user, done) {
done(null, user);
});

passport.deserializeUser(function(user, done) {
done(null, user);
});

passport.use(
	new GoogleStrategy(
		{
			clientID: "631644900154-b2rf0ft11ft3sqjmprg2obc0pmpgr0u7.apps.googleusercontent.com",
			clientSecret: "go1-JjTSWBWVNMw1jzlOE5O1",
			callbackURL: "http://localhost:4500/auth/google/callback"
		},
		function(accessToken, refreshToken, profile, done) {
			var userData = {
				email: profile.emails[0].value,
				name: profile.displayName,
				token: accessToken
			};
			done(null, userData);
		}
	)
);
