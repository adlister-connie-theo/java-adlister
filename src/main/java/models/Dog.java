package models;

import lombok.*;

@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor

public class Dog {
    private Long id;
    private String name;
    private int age;
    private String gender;
}
