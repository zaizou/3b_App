package dz.ifa.model.gestion_utilisateurs;

import javax.persistence.*;

/**
 * Created by Assou on 16/11/2016.
 */
@Entity
@Table(name = "image_magasin")
public class ImageMagasin {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer id;

    @Column
    private String path;
    @Column
    private String originalFilename;
    @Column
    private String nomMagasin;
    @Column
    private Long filesize;
    @Column
    private String dossierStock;



    public ImageMagasin() {
    }

    public ImageMagasin(String path, String originalFilename, String nomMagasin, Long filesize, String dossierStock) {
        this.path = path;
        this.originalFilename = originalFilename;
        this.nomMagasin = nomMagasin;
        this.filesize = filesize;
        this.dossierStock = dossierStock;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getOriginalFilename() {
        return originalFilename;
    }

    public void setOriginalFilename(String originalFilename) {
        this.originalFilename = originalFilename;
    }

    public String getNomMagasin() {
        return nomMagasin;
    }

    public void setNomMagasin(String nomMagasin) {
        this.nomMagasin = nomMagasin;
    }
}
