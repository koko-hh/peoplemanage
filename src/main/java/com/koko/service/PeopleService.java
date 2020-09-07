package com.koko.service;

import com.koko.pojo.People;

import java.util.List;

public interface PeopleService {
    int addpeople(People people);
    int delepeople(int id);
    int updatepeople(People people);
    List<People> querypeople();
    People querypeolebyname(String name);
    People querypeoplebyid(int id);
}
