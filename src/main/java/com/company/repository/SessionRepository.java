package com.company.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.company.entity.UserEntity;

@Repository
public interface SessionRepository extends JpaRepository<UserEntity, Integer> {
	UserEntity findByEmail(String email);

	UserEntity findByOtp(String enteredOtp);

	List<UserEntity> findByRole(String string);
}
