package com.example.DB_Map.Model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "mien")
public class Mien {
	@Id
	@Column(name = "m_id")
	int idmien;
	
	@OneToMany(fetch=FetchType.LAZY,mappedBy = "mien")
	private Set<Diadiemdulich> diadiemdulich;
	
	@Column(name = "m_ten")
	String tenmien;

	public  Mien() {
		super();
	}
	
	public Mien(int idmien, Set<Diadiemdulich> diadiemdulich, String tenmien) {
		super();
		this.idmien = idmien;
		this.diadiemdulich = diadiemdulich;
		this.tenmien = tenmien;
	}

	public int getIdmien() {
		return idmien;
	}

	public void setIdmien(int idmien) {
		this.idmien = idmien;
	}

	public Set<Diadiemdulich> getDiadiemdulich() {
		return diadiemdulich;
	}

	public void setDiadiemdulich(Set<Diadiemdulich> diadiemdulich) {
		this.diadiemdulich = diadiemdulich;
	}

	public String getTenmien() {
		return tenmien;
	}

	public void setTenmien(String tenmien) {
		this.tenmien = tenmien;
	}
}
