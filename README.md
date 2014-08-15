NSObject-Builder
================

Use the builder pattern with a category on NSObject

Before, our a call to sign up a user could look a little like this:

    User *user = [[User alloc] init];
    user.username = self.textFieldStrings[AuthenticationRowUsername];
    NSString *password = self.textFieldStrings[AuthenticationRowPassword];
    user.email = self.textFieldStrings[AuthenticationRowEmail];

    [User signUpUser:user password:password completion:^(User *user, NSError *error) {
        //some completion handling
    }];

But now we have something cleaner, like this:

    User const *user = [User buildObject:^User *(User *builder) {
        builder.username = self.textFieldStrings[AuthenticationRowUsername];
        builder.email = self.textFieldStrings[AuthenticationRowEmail];
        return builder;
    }];
    NSString *password = self.textFieldStrings[AuthenticationRowPassword];
    
    [User signUpUser:user password:password completion:^(User *user, NSError *error) {
        //some completion handling
    }];


The main benefit is that the object is immutable as well, which is great since all we want to do is pass it up to the server. A side benefit is that all the code is self-contained, so I know that I won't find bits of setting the user object scattered elsewhere.

Do what you want with this code, I love you all.
