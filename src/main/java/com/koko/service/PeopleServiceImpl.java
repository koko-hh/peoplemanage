package com.koko.service;

import com.koko.dao.PeopleMapper;
import com.koko.pojo.People;

import java.util.List;

public class PeopleServiceImpl implements PeopleService {
    private PeopleMapper peopleMapper;

    public void setPeopleMapper(PeopleMapper peopleMapper){
        this.peopleMapper =  peopleMapper;
    }
    public int addpeople(People people) {
        return peopleMapper.addpeople(people);
    }

    public int delepeople(int id) {
        return peopleMapper.delepeople(id);
    }

    public int updatepeople(People people) {
        return peopleMapper.updatepeople(people);
    }

    public List<People> querypeople() {
        return peopleMapper.querypeople();
    }

    public People querypeolebyname(String name) {
        return peopleMapper.querypeolebyname(name);
    }

    public People querypeoplebyid(int id) {
        return peopleMapper.querypeoplebyid(id);
    }

}
