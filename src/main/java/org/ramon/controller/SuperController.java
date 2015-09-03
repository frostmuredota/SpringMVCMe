package org.ramon.controller;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.ramon.dao.*;
import org.ramon.model.Persona;
@Controller
@Scope("session")
// MultiAtributtes to session
@SessionAttributes({ "Nombre", "Apellido", "Username","Email", "Password" })

public class SuperController {
	
	private static jdbcPersonaDao jdbc=new jdbcPersonaDao();
	private static List<Persona> personas;
	
	public SuperController(){
		
		 personas=jdbc.getPersonas();
	}
	
	@RequestMapping("/inicio")
	public ModelAndView helloWorld(){
		return new ModelAndView("inicio", "message", "Session Login");
	}
	
	@RequestMapping("/actualizar")
	public ModelAndView actualizar(@RequestParam("name") String name,
		@RequestParam("lastn") String last,
		@RequestParam("username") String user,	@RequestParam("email") String email,ModelMap model,
		@RequestParam("password") String pass, @RequestParam("id") String id) {
		ModelAndView m = new ModelAndView();
		Persona persona = buscarPersonaIdList(Integer.parseInt(id));
		persona.setNombre(name);
		persona.setApellido(last);
		persona.setEmail(email);
		persona.setPassword(pass);
		persona.setUsername(user);
		model.addAttribute("bienvenido", "Bienvenido");
		model.addAttribute("Username", persona.getUsername());
		model.addAttribute("Password", persona.getPassword());
		model.addAttribute("Email", persona.getEmail());
		model.addAttribute("Nombre", persona.getNombre());
		model.addAttribute("Apellido", persona.getApellido());
		model.addAttribute("Img", persona.getImg());
		m.setViewName("registrado");
		return m;
	}

	@RequestMapping("/eliminar")
	public ModelAndView eliminar(@RequestParam(value = "id") String getid,
			RedirectAttributes redirectAttributes) {
		
		StringBuilder ids = new StringBuilder(getid);
		ids.deleteCharAt(0);
		ids.deleteCharAt(1);
		String b = ids.toString();
		int id = Integer.valueOf(b);
		personas.remove(id);
		ModelAndView m = new ModelAndView();
		m.addObject("persons", personas);
		m.addObject("username", "Username");
		m.addObject("password", "Password");
		m.setViewName("registrado");
		return m;

	}
	@RequestMapping("/registro")
	public ModelAndView registro() {
		return new ModelAndView("registro", "message", "Session Login");
	}

	@RequestMapping(value = "/registrado", method = { RequestMethod.POST })
	public String inicioSesion (@RequestParam("username") String user,
			@RequestParam("password") String pass, Persona p ,ModelMap model,
			RedirectAttributes redirectAttributes, SessionStatus sessionStatus) {
	
		Persona persona = buscarPersonaList(user, pass);
		if (persona != null) {
			if (persona.getUsername().equals("admin")) {
				model.addAttribute("persons", personas);
				model.addAttribute("Nombre", " ");
				model.addAttribute("Apellido", " ");
				model.addAttribute("Username", p.getUsername());
				return "registrado";
			} else {
				model.addAttribute("bienvenido", "Bienvenido");
				model.addAttribute("Id", persona.getId());
				model.addAttribute("Username", persona.getUsername());
				model.addAttribute("Password", persona.getPassword());
				model.addAttribute("Email", persona.getEmail());
				model.addAttribute("Nombre", persona.getNombre());
				model.addAttribute("Apellido", persona.getApellido());
				model.addAttribute("Img", persona.getImg());
				return "registrado";
			}

		} else {
			redirectAttributes.addFlashAttribute("error",
					"wrong in username or password");
			return "redirect:inicio";
		}

	}
	
	@RequestMapping(value = "/SpecRunner", method = { RequestMethod.GET })
	public String jasmineTest(){
		return "SpecRunner";
	}

	// Comprobacion datos ingresados, solo se hara validacion en general si es
	// que todos los datos son vacios
	@RequestMapping(value = "/inicio", method = { RequestMethod.POST })
	public String compruebaRegistro(@RequestParam("name") String name,
			@RequestParam("lastn") String last,
			@RequestParam("username") String user,	@RequestParam("email") String email,
			@RequestParam("password") String pass,@RequestParam("image") MultipartFile file ,ModelMap model,
			RedirectAttributes redirectAttributes) throws IOException {
		 
		
		int id=personas.size()+1;
		
		Persona p2 = buscarPersonaUserList(user);

		if (p2 != null) {
			redirectAttributes.addFlashAttribute("error",
					"* Su username esta en uso");
			return "redirect:registro";
		} else {
			Persona p1 = new Persona(id,name, last, user,email, pass);
			//#SAVE FILE
			//Is necessary change the route to the route of the new computer who open this project
			String filePath = "C:/Users/rduran/workspace/SpringMVCMe/WebContent/images/"; 
			file.transferTo(new File(filePath + file.getOriginalFilename()));
			p1.setImg(file.getOriginalFilename());
			personas.add(p1);
			model.addAttribute("exito", "Usuario creado exitosamente");
			model.addAttribute("message", "Inicio de Sesion");
			return "inicio";
		}
	}

	//SEARCH FOR LIST
	
	public static Persona buscarPersonaList(String username, String password) {
		Persona aux = null;
		int i = 0;
		while (i < personas.size() && aux == null) {
			if (personas.get(i).getUsername().equals(username)
					&& personas.get(i).getPassword().equals(password)) {
				aux = personas.get(i);
				
			} else {
				aux = null;
			}
			i++;
		}
		return aux;

	}
	
	
	public static Persona buscarPersonaUserList(String username) {
		Persona aux = null;
		int i = 0;
		while (i < personas.size() && aux == null) {
			if (personas.get(i).getUsername().equals(username)) {
				aux = personas.get(i);
			} else {
				aux = null;
			}
			i++;
		}
		return aux;

	}
	
	public static Persona buscarPersonaIdList(int id) {
		Persona aux = null;
		int i = 0;
		while (i < personas.size() && aux == null) {
			if (personas.get(i).getId()==id) {
				aux = personas.get(i);
				
			} else {
				aux = null;
			}
			i++;
		}
		return aux;

	}
	
	

}