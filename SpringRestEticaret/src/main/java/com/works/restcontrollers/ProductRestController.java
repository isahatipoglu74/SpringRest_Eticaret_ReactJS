package com.works.restcontrollers;

import com.works.models.Product;
import com.works.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import javax.validation.Valid;
import java.util.Map;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequiredArgsConstructor
@RequestMapping("/product")
public class ProductRestController {

    final ProductService productService;

    @PostMapping("/save")
    public ResponseEntity save( @Valid @RequestBody Product product ) {
        return productService.save(product);
    }


    @GetMapping("/list")
    public ResponseEntity list() {
        return productService.list();
    }

    @GetMapping("/list/{id}")
    public ResponseEntity products(@PathVariable Long id) {
        return productService.listCat(id);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity details(@PathVariable Long id) {
        return productService.detail(id);
    }

    @GetMapping("/delete/{id}")
    public ResponseEntity delete(@PathVariable Long id) {
        return productService.delete(id);
    }

    @PostMapping("/update/{id}")
    public ResponseEntity update(@PathVariable Long id, @Valid @RequestBody Product product) {
        return productService.update(id, product);
    }

}
