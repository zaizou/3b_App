package dz.ifa.model.shop;

import com.fasterxml.jackson.annotation.JsonBackReference;
import dz.ifa.model.gestion_utilisateurs.Preference;
import org.hibernate.validator.group.GroupSequenceProvider;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Assou on 17/08/2016.
 */
@Entity
@Table(name = "monnaie")
public class Monnaie {
    @Id
    private String label;
    @Column
    private String nom;
    @Column
    private Double poids;

    @OneToMany(mappedBy = "monnaie",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
    @JsonBackReference
    private List<Prix> prixList;





}
