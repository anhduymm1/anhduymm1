package com.example.DB_Map.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.DB_Map.Model.Vitri;

public interface Vitri_Re extends CrudRepository<Vitri, Integer> {
	//Iterable<Vitri> findByVitriid(Integer vitriid);
	@Query(value = "SELECT * FROM vitri WHERE NOT EXISTS (SELECT diadiemdulich.dddl_vitri_id FROM diadiemdulich WHERE vitri.vitri_id=diadiemdulich.dddl_vitri_id )", nativeQuery = true)
	Iterable<Vitri> selectBy();
	Iterable<Vitri> findByVtkinhdo(Double vtkinhdo);
	Iterable<Vitri> findByVtvido(Double vtvido);
	
	@Query(value = "SELECT * FROM vitri WHERE vitri.vitri_id = ?1",nativeQuery = true)
	Iterable<Vitri> queryBy(Integer vitri_id);
}
