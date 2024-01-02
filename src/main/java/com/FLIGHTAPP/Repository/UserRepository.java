package com.FLIGHTAPP.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.FLIGHTAPP.Entity.User;

public interface UserRepository extends JpaRepository<User,Long> {
	
	public User findByEmail(String email);
}
