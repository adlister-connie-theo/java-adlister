package models;

import lombok.*;

import java.io.Serializable;
@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor
public class Quote implements Serializable {
    private int id;
    private String content;
    private Author author;


}
