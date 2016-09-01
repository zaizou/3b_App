package dz.ifa.model.gestion;

/**
 * Created by Assou on 30/08/2016.
 */
public class TransfertO {

    private Integer idTransfert;
    private String dateTransfert;
    private String jourTransfert;
    private Double montantTransfert;
    private String transferant;
    private String observationTransfert;


    public TransfertO() {
    }

    public TransfertO(Integer idTransfert, String dateTransfert, String jourTransfert, Double montantTransfert, String transferant, String observationTransfert) {
        this.idTransfert = idTransfert;
        this.dateTransfert = dateTransfert;
        this.jourTransfert = jourTransfert;
        this.montantTransfert = montantTransfert;
        this.transferant = transferant;
        this.observationTransfert = observationTransfert;
    }

    public Integer getIdTransfert() {
        return idTransfert;
    }

    public void setIdTransfert(Integer idTransfert) {
        this.idTransfert = idTransfert;
    }

    public String getDateTransfert() {
        return dateTransfert;
    }

    public void setDateTransfert(String dateTransfert) {
        this.dateTransfert = dateTransfert;
    }

    public String getJourTransfert() {
        return jourTransfert;
    }

    public void setJourTransfert(String jourTransfert) {
        this.jourTransfert = jourTransfert;
    }

    public Double getMontantTransfert() {
        return montantTransfert;
    }

    public void setMontantTransfert(Double montantTransfert) {
        this.montantTransfert = montantTransfert;
    }

    public String getTransferant() {
        return transferant;
    }

    public void setTransferant(String transferant) {
        this.transferant = transferant;
    }

    public String getObservationTransfert() {
        return observationTransfert;
    }

    public void setObservationTransfert(String observationTransfert) {
        this.observationTransfert = observationTransfert;
    }
}
