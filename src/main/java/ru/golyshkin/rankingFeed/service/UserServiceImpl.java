package ru.golyshkin.rankingFeed.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;
import ru.golyshkin.rankingFeed.model.User;
import ru.golyshkin.rankingFeed.repository.UserRepository;
import ru.golyshkin.rankingFeed.util.exeption.NotFoundException;

import java.util.List;

import static ru.golyshkin.rankingFeed.util.ValidatorUtil.checkNotFound;
import static ru.golyshkin.rankingFeed.util.ValidatorUtil.checkNotFoundWithId;

@Service
public class UserServiceImpl implements UserService {

    private final UserRepository repository;

    @Autowired
    public UserServiceImpl(UserRepository repository) {
        this.repository = repository;
    }


    @Override
    public User create(User user) {
        Assert.notNull(user, "User must not be null");
        return repository.save(user);
    }

    @Override
    public void delete(int id) {
        repository.delete(id);
    }

    @Override
    public User get(int id) throws NotFoundException {
        return checkNotFoundWithId(repository.get(id), id);
    }

    @Override
    public User getByEmail(String email) throws NotFoundException {
        Assert.notNull(email, "email must not be null");
        return checkNotFound(repository.getByEmail(email), "email=" + email);
    }

    @Override
    public void update(User user) throws NotFoundException {
        Assert.notNull(user, "user must not be null");
        checkNotFoundWithId(repository.save(user), user.getId());
    }

    @Override
    public List<User> getAll() {
        return repository.getAll();
    }
}
