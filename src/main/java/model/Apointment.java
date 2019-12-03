package model;

import lombok.Builder;
import lombok.Data;

import java.time.LocalTime;
import java.util.Date;


@Data
@Builder
public class Apointment {

    private  int id;
    private LocalTime time;
    private Date date;
    private Service service;
    private Master master;
    private String name;
    private String phoneNumber;
    private String email;
}
