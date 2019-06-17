package dao;

import model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDAO {
    private static Map<String, User> map = new HashMap<String, User>() {{
        put("ragchaa", new User("ragchaa", "ragchaa", "utopia park 4a"));
        put("admin", new User("admin", "admin", "Admin address"));
    }};
    private UserDAO() { }
    public static User createUser(String username, String password, String address) {
        User user =  new User(username, password, address);
        map.put(username, user);
        return user;
    }

    public static User getUserByUsername(String username) {
        return map.get(username);
    }
}
