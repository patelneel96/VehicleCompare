package com.company.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.company.entity.ReviewEntity;

public interface ReviewRepository extends JpaRepository<ReviewEntity, Long> {
    List<ReviewEntity> findByVehicleId(Integer vehicleId);
}
