package controller;

import entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.BookServiceImp;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    private BookServiceImp service;
    private int updateId;//选择被更新的id
    private int deleteId;//选中被删除的id
    @GetMapping("/listAll")
    public String getAllBooks(Model model){
        List<Book> books=service.getAllBooks();
        model.addAttribute("books",books);
        return "BookList";
    }
    @GetMapping("/book_input")
    public String inputBook(Model model){
        model.addAttribute("book",new Book());
        return "BookAdd";
    }
    @RequestMapping(value = "/book_save",method = RequestMethod.POST)
    public String saveBook(@ModelAttribute Book book){
        service.save(book);
        return "redirect:/book/listAll";
    }
    @GetMapping("/book_edit/{id}")
    public String editBook(Model model, @PathVariable int id){
        Book book=service.get(id);
        model.addAttribute("book",book);
        updateId=book.getId();//不知道为什么此处存入的book.id与通过@ModelAttribute取出的不一样，所以通过updateId来传值
        return "BookEdit";
    }

  @RequestMapping(value = "/book_update",method = RequestMethod.POST)
    public String updateBook(@ModelAttribute Book book){
        book.setId(updateId);
        service.update(book);
        return "redirect:/book/listAll";
    }
    @GetMapping("/book_choose/{id}")
    public String chooseDeleteBook(Model model,@PathVariable int id){
        Book book=service.get(id);
        deleteId=book.getId();
        model.addAttribute("book",book);
        return "redirect:/book/book_delete";
    }
    @RequestMapping(value = "/book_delete",method = RequestMethod.GET)
    public String deleteBook(@ModelAttribute Book book){
        book.setId(deleteId);
        service.delete(book.getId());
        return "redirect:/book/listAll";
    }






}
