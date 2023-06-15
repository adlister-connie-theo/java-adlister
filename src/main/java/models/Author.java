package models;

import lombok.*;

@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor
public class Author {
    private int id;
    private String firstName;
    private String lastName;
}
