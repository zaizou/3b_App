package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonBackReference;
import dz.ifa.model.gestion_utilisateurs.Utilisateur;
import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="FONCTIONNALITE")
public class Fonctionnalit {

/*	@SequenceGenerator(name="fonctionnalite_idFonctionnalite_seq",
			sequenceName="fonctionnalite_idFonctionnalite_seq",
			allocationSize=1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,
			generator="fonctionnalite_idFonctionnalite_seq")
	@Column(name = "idFonctionnalite", updatable=false)*/

	@Column(name = "idFonctionnalite",columnDefinition = "serial",unique = true)
	@Generated(GenerationTime.INSERT)
	private Integer idFonctionnalite;
/*
	@SequenceGenerator(allocationSize=1, initialValue=1, sequenceName="idFonctionnalite_seq", name="idFonctionnalite_seq")
	@GeneratedValue(generator="idFonctionnalite_seq", strategy=GenerationType.IDENTITY)
	@Column(name="idFonctionnalite")
	private Integer idFonctionnalite;*/

/*
	@PrePersist
	@PreUpdate
	protected void increment() {
		idFonctionnalite = idFonctionnalite + 1;
	}*/

	@Id//@Column(name="DESIGNATION",unique = true)
	private String designation;




	public Integer getIdFonctionnalite() {
		return idFonctionnalite;
	}


	@ManyToMany(mappedBy="foncts",cascade = CascadeType.ALL)
	@JsonBackReference
	private List<Utilisateur> utilisateurs;





	public Fonctionnalit() {
	}

	public void setIdFonctionnalite(Integer idFonctionnalite) {
		this.idFonctionnalite = idFonctionnalite;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public List<Utilisateur> getUtilisateurs() {
		return utilisateurs;
	}

	public void setUtilisateurs(List<Utilisateur> utilisateurs) {
		this.utilisateurs = utilisateurs;
	}
}
