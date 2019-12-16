package model;

import javax.persistence.*;

@Entity//объект класса можно «переложить» в таблицу
@Table(name = "users")//связывает класс и таблицу необ

public class User {
    @Id//поле является первичным ключом в таблице
    @Column(name = "id")//: связывает поле и колонку в таблице необ
    //значение первичного ключа генерируется автоматически.ТИП ГЕНЕРАЦИИ. IDENTITY (увеличение)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "brand")
    private String name;
    @Column(name = "nickname")
    private String nickname;

    public User() {
    }

    public User(Long id, String name, String nickname) {
        this.id = id;
        this.name = name;
        this.nickname = nickname;
    }

    public User(String name, String nickname) {
        this.name = name;
        this.nickname = nickname;
    }

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

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", nickname='" + nickname + '\'' +
                '}';
    }
}
