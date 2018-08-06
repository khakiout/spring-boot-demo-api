package com.example.repositories;

import com.example.domain.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ProductRepository extends CrudRepository<Product, Integer>{
}
