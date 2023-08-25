package com.works.restcontrollers;

import com.works.models.Category;
import com.works.services.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;


@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequiredArgsConstructor
@RequestMapping("/category")
public class CategoryRestController {

    final CategoryService categoryService;

    @PostMapping("/save")
    public ResponseEntity save( @Valid @RequestBody Category category ) {
        return categoryService.save(category);
    }


    @GetMapping("/list")
    public ResponseEntity list() {
        return categoryService.list();
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity details(@PathVariable Long id) {
        return categoryService.detail(id);
    }

    @GetMapping("/delete/{id}")
    public ResponseEntity delete(@PathVariable Long id) {
        return categoryService.delete(id);
    }

    @PostMapping("/update/{id}")
    public ResponseEntity update(@PathVariable Long id, @Valid @RequestBody Category category) {
        return categoryService.update(id, category);
    }

}
