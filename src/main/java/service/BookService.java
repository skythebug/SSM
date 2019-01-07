package service;

import dao.BookMapper;
import entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookService implements BookServiceImp {
    @Autowired
    private BookMapper bookMapper;
    @Override
    public void save(Book book) {
        bookMapper.insert(book);
    }

    @Override
    public void delete(int id) {
         bookMapper.deleteByid(id);
    }

    @Override
    public void update(Book book) {
       bookMapper.update(book);
    }

    @Override
    public Book get(int id) {
        return bookMapper.selectByid(id);
    }

    @Override
    public List<Book> getAllBooks() {
        return bookMapper.getAllBooks();
    }
}
