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
    @Column
    private String iconLink;



    public Couleur() {
    }

    public Couleur(String codeCouleur, String intituleCouleur) {
        this.codeCouleur = codeCouleur;
        this.intituleCouleur = intituleCouleur;
    }

    public String getCodeCouleur() {
        return codeCouleur;
    }

    public void setCodeCouleur(String codeCouleur) {
        this.codeCouleur = codeCouleur;
    }

    public String getIntituleCouleur() {
        return intituleCouleur;
    }

    public void setIntituleCouleur(String intituleCouleur) {
        this.intituleCouleur = intituleCouleur;
    }

    public String getIconLink() {
        return iconLink;
    }

    public void setIconLink(String iconLink) {
        this.iconLink = iconLink;
    }



}
