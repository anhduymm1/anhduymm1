package com.example.DB_Map.Repositories;
import javax.persistence.criteria.CriteriaBuilder.In;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.DB_Map.Model.Diadiemdulich;

import antlr.collections.List;
public interface Diadiemdulich_Re extends CrudRepository<Diadiemdulich, Integer>{
	//Iterable<Diadiemdulich> findByVitriid(Integer id);
	
	@Query(value = "SELECT * FROM diadiemdulich WHERE NOT EXISTS (SELECT vitri.vitri_id FROM vitri WHERE diadiemdulich.dddl_vitri_id = vitri.vitri_id )", nativeQuery = true)
	Iterable<Diadiemdulich> queryBy();
	
	@Query(value = "SELECT * FROM diadiemdulich WHERE diadiemdulich.dddl_m_id=?1 AND diadiemdulich.dddl_id=?1",nativeQuery = true)
	Diadiemdulich found(Integer m_id,Integer dddl_id);

}
