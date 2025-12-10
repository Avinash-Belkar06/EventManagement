package com.eventmanagement.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eventmanagement.main.model.Event;

@Repository
public interface EventRepo extends JpaRepository<Event, Integer> {

	boolean existsByDate(String date);
    // custom queries (if any) can go here
}
