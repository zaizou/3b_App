package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Prix {
    @Id
    private Integer idPrix;
    @Column
    private Double valeur;
    @ManyToOne
    @JsonManagedReference
    Monnaie monnaie;

}
