package dz.ifa.model.shop;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table
public class Couleur {
    @Id
    private String codeCouleur;
    @Column
    private String intituleCouleur;

}
