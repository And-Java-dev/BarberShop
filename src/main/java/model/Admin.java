package model;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Admin {

    private int id;
    private String email;
    private String password;
}
