package com.company.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "technician_comments")
public class TechnicianCommentsEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@OneToOne
	@JoinColumn(name = "vehicle_id", nullable = false, unique = true)
	private VehicleEntity vehicle;

	@Column(nullable = false, length = 500)
	private String technicianComments;

	@Column(nullable = false)
	private String engineReview;

	@Column(nullable = false)
	private String overallReview;

	@Column(nullable = false)
	private String carMaintenanceReview;

	// Getters and Setters
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public VehicleEntity getVehicle() {
		return vehicle;
	}

	public void setVehicle(VehicleEntity vehicle) {
		this.vehicle = vehicle;
	}

	public String getTechnicianComments() {
		return technicianComments;
	}

	public void setTechnicianComments(String technicianComments) {
		this.technicianComments = technicianComments;
	}

	public String getEngineReview() {
		return engineReview;
	}

	public void setEngineReview(String engineReview) {
		this.engineReview = engineReview;
	}

	public String getOverallReview() {
		return overallReview;
	}

	public void setOverallReview(String overallReview) {
		this.overallReview = overallReview;
	}

	public String getCarMaintenanceReview() {
		return carMaintenanceReview;
	}

	public void setCarMaintenanceReview(String carMaintenanceReview) {
		this.carMaintenanceReview = carMaintenanceReview;
	}
}
