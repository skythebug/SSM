package dao;

import entity.Book;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookMapper {
    void deleteByid(int id);

    void insert(Book book);

    Book selectByid(int id);

    void update(Book book);

    List<Book> getAllBooks();

}
