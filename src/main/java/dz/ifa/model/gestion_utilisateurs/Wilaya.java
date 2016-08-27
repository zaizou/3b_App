package dz.ifa.model.gestion_utilisateurs;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Assou on 27/08/2016.
 */
@Entity
@Table
public class Wilaya {
    @Id
    private Integer matriculeWilaya;
    @Column
    private String intituleWilaya;

    public Wilaya() {
    }

    public Wilaya(Integer matriculeWilaya, String intituleWilaya) {
        this.matriculeWilaya = matriculeWilaya;
        this.intituleWilaya = intituleWilaya;
    }

    public Integer getMatriculeWilaya() {
        return matriculeWilaya;
    }

    public void setMatriculeWilaya(Integer matriculeWilaya) {
        this.matriculeWilaya = matriculeWilaya;
    }

    public String getIntituleWilaya() {
        return intituleWilaya;
    }

    public void setIntituleWilaya(String intituleWilaya) {
        this.intituleWilaya = intituleWilaya;
    }
}
