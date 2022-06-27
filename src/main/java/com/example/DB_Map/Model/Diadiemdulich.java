package com.example.DB_Map.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "diadiemdulich")
public class Diadiemdulich {
	@Id
	private int dddl_id;
	@NotNull(message = "Bạn phải nhập tên địa điểm du lịch")
	private String dddl_ten;
	@NotNull(message = "Bạn phải nhập mô tả cho địa điểm du lịch")
	private String dddl_mota;
	@NotNull(message = "Bạn phải upload hình ảnh cho địa điểm du lịch")
	private String dddl_path;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="dddl_m_id")
	private Mien mien;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="dddl_vitri_id")
	private Vitri vitri;
	
	
	public Diadiemdulich() {
		super();
	}

	public Diadiemdulich(int dddl_id, String dddl_ten,String dddl_mota, String dddl_path, Mien mien, Vitri vitri) {
		super();
		this.dddl_id = dddl_id;
		this.dddl_ten = dddl_ten;
		this.dddl_mota = dddl_mota;
		this.dddl_path = dddl_path;
		this.mien = mien;
		this.vitri = vitri;
	}

	public int getDddl_id() {
		return dddl_id;
	}

	public void setDddl_id(int dddl_id) {
		this.dddl_id = dddl_id;
	}

	public String getDddl_ten() {
		return dddl_ten;
	}

	public void setDddl_ten(String dddl_ten) {
		this.dddl_ten = dddl_ten;
	}

	public String getDddl_mota() {
		return dddl_mota;
	}

	public void setDddl_mota(String dddl_mota) {
		this.dddl_mota = dddl_mota;
	}

	public String getDddl_path() {
		return dddl_path;
	}

	public void setDddl_path(String dddl_path) {
		this.dddl_path = dddl_path;
	}

	public Mien getMien() {
		return mien;
	}

	public void setMien(Mien mien) {
		this.mien = mien;
	}

	public Vitri getVitri() {
		return vitri;
	}

	public void setVitri(Vitri vitri) {
		this.vitri = vitri;
	}

	

}
