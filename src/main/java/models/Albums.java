package models;

import lombok.*;
import java.io.Serializable;

@NoArgsConstructor
@Getter
@Setter
@ToString
@AllArgsConstructor
public class Albums implements Serializable {

    private int id;
    private String artist;
    private String name;
    private int releaseDate;
    private double sales;
    private String genre;

}
