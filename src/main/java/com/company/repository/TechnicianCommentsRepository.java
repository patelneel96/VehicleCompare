package com.company.repository;

import com.company.entity.TechnicianCommentsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

public interface TechnicianCommentsRepository extends JpaRepository<TechnicianCommentsEntity, Integer> {

	Optional<TechnicianCommentsEntity> findByVehicle_VehicleId(Integer vehicleId);

	@Modifying
	@Transactional
	@Query(value = "DELETE FROM technician_comments WHERE vehicle_id = :vehicleId", nativeQuery = true)
	void deleteByVehicleId(@Param("vehicleId") Integer vehicleId);

}
