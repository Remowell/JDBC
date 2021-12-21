package Accounts;

import java.util.HashMap;
import java.util.Map;

public class AccountService {
    private static final Map<String, UserAccount> loginToProfile;
    private static final Map<String, UserAccount> sessionIdToProfile;

    static {
        loginToProfile = new HashMap<>();
        sessionIdToProfile = new HashMap<>();

        loginToProfile.put("admin", new UserAccount("admin", "1234", "email"));
    }

    public static void addNewUser(UserAccount userProfile){
        loginToProfile.put(userProfile.getLogin(), userProfile);
    }

    public static UserAccount getUserByLogin(String login){
        return loginToProfile.get(login);
    }

    public static UserAccount getUserBySessionId(String sessionId){
        return sessionIdToProfile.get(sessionId);
    }

    public static void addSession(String sessionId, UserAccount userProfile){
        sessionIdToProfile.put(sessionId, userProfile);
    }
    public static void deleteSession(String sessionId){
        sessionIdToProfile.remove(sessionId);
    }
}
