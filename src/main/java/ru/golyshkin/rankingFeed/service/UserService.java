package ru.golyshkin.rankingFeed.service;

import ru.golyshkin.rankingFeed.model.User;
import ru.golyshkin.rankingFeed.util.exeption.NotFoundException;

import java.util.List;

public interface UserService {

    User create(User user);

    void delete(int id);

    User get(int id) throws NotFoundException;

    User getByEmail(String email) throws NotFoundException;

    void update(User user);

    List<User> getAll();

}
