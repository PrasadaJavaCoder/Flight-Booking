package com.FLIGHTAPP.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.FLIGHTAPP.Entity.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation,Long>{

}
