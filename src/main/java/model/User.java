package model;
import lombok.Data;

@Data
public class User {
    private Long userId;
    private String fullName;
    private String email;
    private Integer sex;
    private String stateCode;

    public User(){

    }

    public User(Long userId, String fullName, String email, Integer sex,String stateCode) {
        this.userId = userId;
        this.fullName = fullName;
        this.email = email;
        this.sex = sex;
        this.stateCode=stateCode;
    }
}
