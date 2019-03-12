package ru.golyshkin.rankingFeed.model;

import javax.persistence.*;
import java.util.Objects;

@MappedSuperclass
@Access(AccessType.FIELD)
public abstract class AbstractBaseEntity {
    public static final int START_SEQ = 100000;

    @Id
    @SequenceGenerator(name = "global_seq", sequenceName = "global_seq", allocationSize = 1, initialValue = START_SEQ)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "global_seq")
    protected Integer id;

    protected AbstractBaseEntity() {

    }

    protected AbstractBaseEntity(Integer id) {
        this.id = id;
    }

    public boolean isNew() {
        return this.id == null;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AbstractBaseEntity that = (AbstractBaseEntity) o;
        return id != null && Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return id == null ? 0 : id;
    }
}
