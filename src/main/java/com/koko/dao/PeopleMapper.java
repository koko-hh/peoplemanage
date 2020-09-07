package com.koko.dao;

import com.koko.pojo.People;

import java.util.List;

public interface PeopleMapper {
     int addpeople(People people);
     int delepeople(int id);
     int updatepeople(People people);
     List<People> querypeople();
     People querypeolebyname(String name);
     People querypeoplebyid(int id);
}
