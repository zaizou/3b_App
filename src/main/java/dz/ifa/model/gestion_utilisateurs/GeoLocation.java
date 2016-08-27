package dz.ifa.model.gestion_utilisateurs;

import javax.persistence.*;

/**
 * Created by Assou on 27/08/2016.
 */
@Entity
@Table
public class GeoLocation {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Integer idLocation;
    @Column
    private Double latitude;
    @Column
    private Double longitude;


    public GeoLocation() {
    }

    public GeoLocation(Double latitude, Double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
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
}
