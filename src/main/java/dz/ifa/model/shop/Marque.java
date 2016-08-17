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




}
