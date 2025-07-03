package com.example.swaggerex.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

@Schema(description = "Customer Data Transfer Object")
public class CustomerDTO {

    @Schema(description = "Unique ID of the customer", example = "19")
    private Long id;

    @NotBlank
    @Schema(description = "Full name of the customer", example = "Efe Ahmet Kurt")
    private String name;

    @Email
    @Schema(description = "Email address", example = "efekurt0@hotmail.com")
    private String email;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
