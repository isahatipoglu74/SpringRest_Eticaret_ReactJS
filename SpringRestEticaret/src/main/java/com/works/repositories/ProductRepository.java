package com.works.repositories;

import com.works.entities.projections.IProCat;
import com.works.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Optional<Product> findByIdEquals(Long id);

    //tüm product list
    @Query(value = "select * from product as p\n" +
            "    inner join category as c on c.id", nativeQuery = true)
    List<IProCat> proCatJoin();

    //1 bendeki fonksiyonun ilk parametresine denk geliyor
    @Query(value = "select * from product as p\n" +
            "    inner join category as c on c.id where p.id=?1", nativeQuery = true)
    List<IProCat> proCatJoin(Long id);
}