package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDao;
	
	@RequestMapping("home.do")
	public String home() {
		
		return "WEB-INF/views/home.jsp";
	}

	//@RequestMapping(path = "searchFilmById.do",params = "ID", method = RequestMethod.GET)
    @GetMapping(path = "findFilmById.do",params = "filmID")
	public ModelAndView findFilmById(Integer filmID) throws SQLException {
		//logic goes here for mapping 
	System.out.println("Reached this line *********** ");
	ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(filmID);
		mv.addObject("film", f);
		mv.setViewName("WEB-INF/views/singleview.jsp");
		
        return mv;
	}
    @GetMapping(path = "findFilmBySearchWord.do",params = "searchWord")
   	public ModelAndView findFilmBySearchWord(String searchWord) throws SQLException {
   		//logic goes here for mapping 
   	System.out.println("Reached this line *********** ");
   	ModelAndView mv = new ModelAndView();
   		List<Film> films = filmDao.findFilmsBySearchWord(searchWord);
   		mv.addObject("film", films);
   		mv.setViewName("WEB-INF/views/findFilmBySearchWord.jsp");
   		
           return mv;
   	}
}
	

