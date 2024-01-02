package com.FLIGHTAPP.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.FLIGHTAPP.Entity.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger,Long>{

}
