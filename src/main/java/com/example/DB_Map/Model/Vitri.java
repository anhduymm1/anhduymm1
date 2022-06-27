package com.example.DB_Map.Model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "vitri")
public class Vitri {

	@Id
	@Column(name = "vitri_id")
	private int vitriid;
	
	@JsonIgnore
	@Column(name = "vt_kinhdo")
	@NotNull(message = "Bạn phải nhập kinh độ")
	private Double vtkinhdo;
	
	@Column(name = "vt_vido")
	@NotNull(message = "Bạn phải nhập vĩ độ")
	private Double vtvido;

	public Vitri() {
		super();
	}
	
	public Vitri(int vitriid,Double vtkinhdo, Double vtvido) {
		super();
		this.vitriid = vitriid;
		this.vtkinhdo = vtkinhdo;
		this.vtvido = vtvido;
	}

	public int getVitriid() {
		return vitriid;
	}

	public void setVitriid(int vitriid) {
		this.vitriid = vitriid;
	}


	public Double getVtkinhdo() {
		return vtkinhdo;
	}

	public void setVtkinhdo(Double vtkinhdo) {
		this.vtkinhdo = vtkinhdo;
	}

	public Double getVtvido() {
		return vtvido;
	}

	public void setVtvido(Double vtvido) {
		this.vtvido = vtvido;
	}
	

}
