package com.kbstar.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class contact {
    private int id;
    private String cust_id;
    private String email;
    private String msg;
    private String rdate;

}
