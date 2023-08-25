package com.works.repositories;

import com.works.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface AdminRepository extends JpaRepository<Admin, Long> {

    Optional<Admin> findByEmailEqualsIgnoreCaseAndPasswordEquals(String email, String password);
}