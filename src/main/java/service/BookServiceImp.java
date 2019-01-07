package service;

import entity.Book;

import java.util.List;

public interface BookServiceImp {

    void save(Book book);

    void delete(int id);

    void update(Book book);

    Book get(int id);

    List<Book> getAllBooks();
}
