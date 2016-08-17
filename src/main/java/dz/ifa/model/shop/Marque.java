package dz.ifa.model.shop;

import org.springframework.cache.annotation.CacheConfig;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Marque {
    @Id
    private String nomMarque;
    @Column
    private String origine;


    public Marque() {
    }

    public Marque(String nomMarque) {
        this.nomMarque = nomMarque;
    }

    public Marque(String nomMarque, String origine) {
        this.nomMarque = nomMarque;
        this.origine = origine;
    }

    public String getNomMarque() {
        return nomMarque;
    }

    public void setNomMarque(String nomMarque) {
        this.nomMarque = nomMarque;
    }

    public String getOrigine() {
        return origine;
    }

    public void setOrigine(String origine) {
        this.origine = origine;
    }
}
