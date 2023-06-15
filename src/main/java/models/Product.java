package models;

import lombok.*;

import java.io.Serializable;

@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor
public class Product implements Serializable {
    private String name;
    private double price;
}
