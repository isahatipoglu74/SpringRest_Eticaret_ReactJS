package com.works.services;

import com.works.configs.Rest;
import com.works.models.Category;
import com.works.models.Product;
import com.works.repositories.CategoryRepository;
import com.works.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class CategoryService {

    final CategoryRepository categoryRepository;

    public ResponseEntity save( Category category ) {
        try {
            categoryRepository.save(category);
            Rest rest = new Rest(true, category);
            return new ResponseEntity(rest, HttpStatus.OK);
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }

    public ResponseEntity list() {
        List<Category> list = categoryRepository.findAll();
        Rest rest = new Rest(true, list);
        return new ResponseEntity(rest, HttpStatus.OK);
    }

    public ResponseEntity delete(Long id) {
        try {
            categoryRepository.deleteById(id);
            Rest rest = new Rest(true, "Category deleted");
            return new ResponseEntity(rest, HttpStatus.OK);
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }


    public ResponseEntity detail(Long id) {
        try {
            Optional<Category> opt = categoryRepository.findById(id);
            if (opt.isPresent()) {
                Category c = opt.get();
                Rest rest = new Rest(true, c);
                return new ResponseEntity(rest, HttpStatus.OK);
            } else {
                throw new Exception("Category not found");
            }
        } catch (Exception ex) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }


    public ResponseEntity update(Long id, Category category) {
        try {
            Optional<Category> opt = categoryRepository.findById(id);
            if(opt.isPresent()) {
                Category c = opt.get();
                c.setName(category.getName());
                categoryRepository.save(c);
                Rest rest = new Rest(true, c);
                return new ResponseEntity(rest, HttpStatus.OK);
            }else {
                throw new Exception("Category not found");
            }
        }catch (Exception ex ) {
            Rest rest = new Rest(false, ex.getMessage());
            return new ResponseEntity(rest, HttpStatus.BAD_REQUEST);
        }
    }

}
