package dz.ifa.model.gestion_utilisateurs;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import dz.ifa.model.gestion.Compta;
import dz.ifa.model.gestion.Transfert;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Assou on 27/08/2016.
 */
@Entity
@Table(name = "magasin")
public class Magasin {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer IdMagasin;
    @Column
    private String nomMagazin;
    @Column
    private String adresseMagasin;
    @ManyToOne
    @JsonManagedReference
    private Wilaya wilayaMagasin;
    @Column
    private Double latitude;
    @Column
    private Double longitude;

    @OneToOne
    @JsonManagedReference
    private Utilisateur responsableMagasin;

    @OneToMany(mappedBy = "magasin",fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Compta> comptabiliteMagasin;
    @OneToMany(mappedBy = "magasin",fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Transfert> transfertsMagasin;






    public Magasin(String nomMagazin, String adresseMagasin, Wilaya wilayaMagasin, Utilisateur responsableMagasin) {
        this.nomMagazin = nomMagazin;
        this.adresseMagasin = adresseMagasin;
        this.wilayaMagasin = wilayaMagasin;
        this.responsableMagasin = responsableMagasin;
    }

    public Magasin(String nomMagazin, Utilisateur responsableMagasin) {
        this.nomMagazin = nomMagazin;
        this.responsableMagasin = responsableMagasin;
    }

    public Magasin() {
    }

    public Magasin(Double latitude, Double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Magasin(String nomMagazin, String adresseMagasin, Double latitude, Double longitude, Utilisateur responsableMagasin) {
        this.nomMagazin = nomMagazin;
        this.adresseMagasin = adresseMagasin;
        this.latitude = latitude;
        this.longitude = longitude;
        this.responsableMagasin = responsableMagasin;
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Integer getIdMagasin() {
        return IdMagasin;
    }

    public String getNomMagazin() {
        return nomMagazin;
    }

    public void setNomMagazin(String nomMagazin) {
        this.nomMagazin = nomMagazin;
    }

    public String getAdresseMagasin() {
        return adresseMagasin;
    }

    public void setAdresseMagasin(String adresseMagasin) {
        this.adresseMagasin = adresseMagasin;
    }

    public Wilaya getWilayaMagasin() {
        return wilayaMagasin;
    }

    public void setWilayaMagasin(Wilaya wilayaMagasin) {
        this.wilayaMagasin = wilayaMagasin;
    }



    public Utilisateur getResponsableMagasin() {
        return responsableMagasin;
    }

    public void setResponsableMagasin(Utilisateur responsableMagasin) {
        this.responsableMagasin = responsableMagasin;
    }

    public List<Compta> getComptabiliteMagasin() {
        return comptabiliteMagasin;
    }

    public void setComptabiliteMagasin(List<Compta> comptabiliteMagasin) {
        this.comptabiliteMagasin = comptabiliteMagasin;
    }

    public void setIdMagasin(Integer idMagasin) {
        IdMagasin = idMagasin;
    }

    public List<Transfert> getTransfertsMagasin() {
        return transfertsMagasin;
    }

    public void setTransfertsMagasin(List<Transfert> transfertsMagasin) {
        this.transfertsMagasin = transfertsMagasin;
    }
}
