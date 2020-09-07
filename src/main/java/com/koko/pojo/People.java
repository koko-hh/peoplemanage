package com.koko.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class People {
    private int id;
    private String name;
    private int age;
    private String say;

}
