package dz.ifa.repository.user_management;

import dz.ifa.model.gestion_utilisateurs.Notification;
import dz.ifa.model.gestion_utilisateurs.Tache;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TacheRepository extends JpaRepository<Tache,String> {
	Tache save(Tache tache);
}
