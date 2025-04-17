package com.company.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List; 
import com.company.entity.VehicleEntity;

@Repository
public interface VehicleRepository extends JpaRepository<VehicleEntity, Integer> {

	List<VehicleEntity> findByStatus(String string);

	List<VehicleEntity> findByCity(String city);

	List<VehicleEntity> findByBrandName(String brandName);

	List<VehicleEntity> findByCityAndBrandName(String city, String brandName);

	List<VehicleEntity> findAllByVehicleIdIn(List<Integer> vehicleId);


	@Query(value = """
		     
		     SELECT   v.*, u.first_name, u.last_name,  u.email, u.contact_num,  u.city, u.state FROM vehicles v, users u  WHERE v.user_id = u.user_id AND v.vehicle_id = :vehicleId""", nativeQuery = true)
		List<Object[]> findVehicleWithSellerRaw(@Param("vehicleId") Integer vehicleId);


		long countByStatus(String status);
		
		
}

