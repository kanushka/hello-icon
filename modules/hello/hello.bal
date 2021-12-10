# Icon Client documentation
#
# + url - Test url to check documentation
@display {label: "Hello Icon Client"}
public client class hello {
    public string url;

    public isolated function init() returns error? {
        self.url = "https://kanushka.com/";
    }

    # Say hi message.
    #
    # + return - Test message or an error
    @display {label: "Say Hi"}
    remote isolated function sayHi()  returns string|error? {
        return "Hi";
    }

    # Say hello to user.
    #
    # + user - User account
    # + message - Message to send
    # + return -  Message status or an error
    @display {label: "Say hello to user"}
    remote isolated function sayHello(User user, @display {label: "Message"} string message) returns string|error? {
        return "Hello " + user.name;
    }
}

# User account.
# + uid - Unique identifier of the account
# + name - The name of the account
@display{label: "User Account"} 
public type User record {
    string uid = "1";
    string name;
};