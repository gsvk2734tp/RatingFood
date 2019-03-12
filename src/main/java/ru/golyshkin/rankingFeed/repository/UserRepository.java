package ru.golyshkin.rankingFeed.repository;

import ru.golyshkin.rankingFeed.model.User;

import java.util.List;

public interface UserRepository {
    User save(User user);

    void delete(int id);

    User get(int id);

    User getByEmail(String email);

    List<User> getAll();

}
