package com.skilldistillery.film.controllers;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;

	@RequestMapping("home.do")
	public String home() {

		return "WEB-INF/views/home.jsp";
	}

	@RequestMapping("createFilmPage.do")
	public String createFilmPage() {

		return "WEB-INF/views/createFilm.jsp";
	}

	@RequestMapping("addedFilm.do")
	public String filmAdded() {

		return "WEB-INF/views/addedFilm.jsp";

	}

	@RequestMapping("editFilmForm.do")
	public String filmUpdate() {

		return "WEB-INF/views/updateFilm.jsp";

	}

	@GetMapping(path = "findFilmById.do", params = "filmID")
	public ModelAndView findFilmById(Integer filmID) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(filmID);
		List<Actor> actors = filmDao.findActorsByFilmId(filmID);
		mv.addObject("film", f);
		mv.addObject("actor", actors);
		mv.setViewName("WEB-INF/views/singleview.jsp");

		return mv;
	}


	@GetMapping(path = "findFilmBySearchWord.do", params = "searchWord")
	public ModelAndView findFilmBySearchWord(String searchWord) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Film> films = filmDao.findFilmsBySearchWord(searchWord);
		Map<Film, List<Actor>> filmActorMap = new HashMap<>();
		for (Film film : films) {
			List<Actor> filmActors = filmDao.findActorsByFilmId(film.getId());
			filmActorMap.put(film, filmActors);
		}
		mv.addObject("film", films);
		mv.addObject("filmActorMap", filmActorMap);
		mv.setViewName("WEB-INF/views/findFilmBySearchWord.jsp");

		return mv;
	}

	@RequestMapping(path = "createFilm.do", method = RequestMethod.POST)
	public String createFilm(Film f, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		Film film = filmDao.createFilm(f);
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/views/addedFilm.jsp");
		redir.addFlashAttribute("film", f);
		return "redirect:addedFilm.do";

	}

	
	@RequestMapping(path = "editFilmById.do", params = "filmId", method = RequestMethod.GET)
	public ModelAndView editFilmById(int filmId) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Film f = filmDao.findFilmById(filmId);
		mv.addObject("film", f);
		
		mv.setViewName("WEB-INF/views/updateFilm.jsp");
		return mv;
	}

	@RequestMapping(path = "updateFilm.do", method = RequestMethod.POST)
	public ModelAndView editFilm(Film film,int filmId) throws SQLException {
		
		ModelAndView mv = new ModelAndView();
		
		filmDao.updateFilm(film, filmId);
		
		mv.setViewName("WEB-INF/views/home.jsp");
		return mv;
	}
	
	

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.POST)
	public ModelAndView deleteFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		if (film.getId() <= 1000) {
			film = null;
		} else {
			filmDao.deleteFilm(film);
		}
		mv.addObject("film", film);
		mv.setViewName("WEB-INF/views/deleteFilm.jsp");
		return mv;

	}

}