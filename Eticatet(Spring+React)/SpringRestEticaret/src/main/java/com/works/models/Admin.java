package com.works.models;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long aid;

    private String name;

    private String surname;

    @Size(min = 2, max = 150)
    @NotEmpty
    @NotNull
    @Column(unique = true)
    private String email;

    @Size(min = 2, max = 150)
    @NotEmpty
    @NotNull
    private String password;


    private String description;


    private Boolean status=true;

}
