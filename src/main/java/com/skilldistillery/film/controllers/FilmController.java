package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping

<<<<<<< HEAD
	@RequestMapping("createFilmPage.do")
	public String createFilmPage() {

		return "WEB-INF/views/createFilm.jsp";
	}
	
	

	//@RequestMapping(path = "searchFilmById.do",params = "ID", method = RequestMethod.GET)
    @GetMapping(path = "findFilmById.do",params = "filmID")
=======
	// @RequestMapping(path = "searchFilmById.do",params = "ID", method =
	// RequestMethod.GET)
	@GetMapping(path = "findFilmById.do", params = "filmID")
>>>>>>> 28f01c3207dad0b426a579afc716c3137e4420ec
	public ModelAndView findFilmById(Integer filmID) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(filmID);
		mv.addObject("film", f);
		mv.setViewName("WEB-INF/views/singleview.jsp");

		return mv;
	}

	@GetMapping(path = "findFilmBySearchWord.do", params = "searchWord")
	public ModelAndView findFilmBySearchWord(String searchWord) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDao.findFilmsBySearchWord(searchWord);
		mv.addObject("film", films);
		mv.setViewName("WEB-INF/views/findFilmBySearchWord.jsp");

		return mv;
	}

//	@GetMapping(path = "createFilm.do", params = "createFilm")
//	public ModelAndView createFilm(Film f) throws SQLException {
//		ModelAndView mv = new ModelAndView();
//		Film film = filmDao.createFilm(f);
//		mv.addObject("film", film);
//		mv.setViewName("WEB-INF/views/createFilm.jsp");
//
//		return mv;
//	}

	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public String createFilm(Film f, RedirectAttributes redir) {
		filmDao.createFilm(f);
		redir.addFlashAttribute("film", f);
		return "redirect:filmAdded.do";
	}

	@RequestMapping(path = "addedFilm.do", method = RequestMethod.GET)
	public ModelAndView filmAdded() {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("WEB-INF/views/addedFilm.jsp");
		return mv;
	}
<<<<<<< HEAD
    @GetMapping(path = "findFilmBySearchWord.do",params = "searchWord")
   	public ModelAndView findFilmBySearchWord(String searchWord) throws SQLException {
   	ModelAndView mv = new ModelAndView();
   		List<Film> films = filmDao.findFilmsBySearchWord(searchWord);
   		mv.addObject("film", films);
   		mv.setViewName("WEB-INF/views/findFilmBySearchWord.jsp");
   		
           return mv;
   	}

    @RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
    public String createFilm(Film f, RedirectAttributes redir) {
      filmDao.createFilm(f);
      redir.addFlashAttribute("film", f);
      return "redirect:addedFilm.do";
    }
      @RequestMapping("addedFilm.do")
      public ModelAndView filmAdded() {
        ModelAndView mv = new ModelAndView();
      
        mv.setViewName("WEB-INF/views/addedFilm.jsp");
        return mv;
}
=======
>>>>>>> 28f01c3207dad0b426a579afc716c3137e4420ec
}