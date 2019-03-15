package ru.golyshkin.rankingFeed.model;

import org.hibernate.validator.constraints.Range;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "feed", uniqueConstraints = {@UniqueConstraint(columnNames = "name", name = "feed_unique_idx")})
public class Feed extends AbstractNamedEntity {

    @Column(name = "description", nullable = false)
    @NotBlank
    private String description;

    @Column(name = "price", nullable = false)
    @Range(min = 1, max = 1000)
    private Integer price;

    @Column(name = "ranking", nullable = false)
    @Range(min = 1, max = 10)
    private Integer ranking;

    @Column(name = "photourl")
    private String photoUrl;

    @ManyToOne(fetch = FetchType.EAGER)
    @CollectionTable(name = "users", joinColumns = @JoinColumn(name = "id"))
    private User user;

    public Feed() {

    }

    public Feed(String name, String description, Integer price, Integer ranking, String photoUrl) {
        this(null, name, description, price, ranking, photoUrl);
    }

    public Feed(Integer id, String name, String description, Integer price, Integer ranking, String photoUrl) {
        super(id, name);
        this.description = description;
        this.price = price;
        this.ranking = ranking;
        this.photoUrl = photoUrl;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getRanking() {
        return ranking;
    }

    public void setRanking(Integer ranking) {
        this.ranking = ranking;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Feed{" +
                "description='" + description + '\'' +
                ", price=" + price +
                ", ranking=" + ranking +
                ", photoUrl='" + photoUrl + '\'' +
                ", user=" + user +
                ", name='" + name + '\'' +
                ", id=" + id +
                '}';
    }
}
