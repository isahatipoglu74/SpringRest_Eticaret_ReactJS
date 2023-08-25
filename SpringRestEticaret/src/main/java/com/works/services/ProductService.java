package com.works.services;

import com.works.configs.Rest;
import com.works.entities.projections.IProCat;
import com.works.models.Product;
import com.works.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class ProductService {

    final ProductRepository productRepository;

    public ResponseEntity save( Product product ) {
        try {
            productRepository.save(product);
            Rest rest = new Rest(true, product);
            return new ResponseEntity(rest, HttpStatus.OK);
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity list() {
        List<Product> ls = productRepository.findAll();
        Rest rest = new Rest(true, ls);
        return new ResponseEntity(rest, HttpStatus.OK);
    }


    public ResponseEntity listCat(Long cid) {
        return new ResponseEntity(productRepository.proCatJoin(cid), HttpStatus.OK);
    }

    public ResponseEntity delete(Long id) {
        try {
            productRepository.deleteById(id);
            Rest rest = new Rest(true, "Product deleted");
            return new ResponseEntity(rest, HttpStatus.OK);
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }


    public ResponseEntity detail(Long id) {
        try {
            Optional<Product> opt = productRepository.findById(id);
            if (opt.isPresent()) {
                Product p = opt.get();
                Rest rest = new Rest(true, p);
                return new ResponseEntity(rest, HttpStatus.OK);
            } else {
                throw new Exception("Product not found");
            }
        } catch (Exception ex) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }


    public ResponseEntity update(Long id, Product product) {
        try {
            Optional<Product> opt = productRepository.findById(id);
            if(opt.isPresent()) {
                Product p = opt.get();
                p.setBrandName(product.getBrandName());
                p.setTitle(product.getTitle());
                p.setDescription(product.getDescription());
                p.setStock(product.getStock());
                p.setCategory(product.getCategory());
                p.setPhotos(product.getPhotos());
                productRepository.save(p);
                Rest rest = new Rest(true, p);
                return new ResponseEntity(rest, HttpStatus.OK);
            }else {
                throw new Exception("Product not found");
            }
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }

}
