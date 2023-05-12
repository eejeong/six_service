package com.kbstar.ftame;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@org.apache.ibatis.annotations.Mapper
public interface Mapper<K,V>{
    public void insert(V v);
    public void delete(K k);
    public void update(V v);
    public V select(K k);
    public List<V> selectall();
}
