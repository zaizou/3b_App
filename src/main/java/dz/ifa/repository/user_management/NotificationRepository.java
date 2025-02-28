package dz.ifa.repository.user_management;

import dz.ifa.model.gestion_utilisateurs.Notification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NotificationRepository extends JpaRepository<Notification,String> {
	Notification save(Notification notification);
}
