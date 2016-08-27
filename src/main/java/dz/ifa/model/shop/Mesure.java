package dz.ifa.model.shop;

import javax.persistence.*;

/**
 * Created by Assou on 21/08/2016.
 */
@Entity
@Table
public class Mesure {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer idMesure;
    @Column
    private String type; ///taille,pointure ...
    @Column
    private Double pointure;
    @Column
    private Double height;
    @Column
    private Double weight;
    @Column
    private String valeurStandard;


}
