package com.example.DB_Map.Controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Iterator;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.JavaScriptUtils;

import com.example.DB_Map.Model.Vitri;
import com.example.DB_Map.Repositories.Diadiemdulich_Re;
import com.example.DB_Map.Repositories.Vitri_Re;

@Controller
public class VitriController {
	@Autowired 
	Vitri_Re vitri_Re;
	@Autowired 
	public Diadiemdulich_Re diadiemdulich_Re;
	@RequestMapping(value = "/vitri",method = RequestMethod.GET)
	public String vitri(ModelMap modelMap) {
		Iterable<Vitri> Vitri =vitri_Re.findAll();
		modelMap.addAttribute("Vitri",Vitri);
		return("backend/vitri");
	}
//	
	@RequestMapping(value="/xem/{vitriid}", method=RequestMethod.GET)	
	public String xemchitietvitri(ModelMap modelMap, @PathVariable Integer vitriid) {
		Iterable<Vitri> Vitri =vitri_Re.queryBy(vitriid);
		modelMap.addAttribute("Vitri",Vitri);
		return("backend/vitri");
	}
	
	// insert vi tri
	@RequestMapping(value="/insertvitri", method=RequestMethod.GET)
	public String insertvitri(ModelMap modelMap) {
		modelMap.addAttribute("Vitri",new Vitri());
		return "backend/insert_vitri";
	}
	
	 @RequestMapping(value = "/insertvitri", method = RequestMethod.POST)
	 public String insert(ModelMap modelMap, @Validated @ModelAttribute("Vitri") Vitri Vitri, BindingResult bindingResult) {
		 if (bindingResult.hasErrors()) {
			return "backend/insert_vitri";
		}
		 // Loc trung khi nhap kinh do, vi do
		 Iterable<Vitri> Kinhdo =vitri_Re.findByVtkinhdo(Vitri.getVtkinhdo());
		 Iterable<Vitri> Vido =vitri_Re.findByVtkinhdo(Vitri.getVtvido());
		 if (Kinhdo.iterator().hasNext()&&Vido.iterator().hasNext()) {		
			System.out.print("dfdsfsdfsdfsdfsdfd");
		}
		 else {
			 vitri_Re.save(Vitri);
		}
		return "redirect:/vitri";
	 }
	 
	 //update vi tri
		@RequestMapping(value="/vitri/vitri_view/{vitri_id}", method=RequestMethod.GET)
		public String updatevitri(ModelMap modelMap, @PathVariable Integer vitri_id) {
			modelMap.addAttribute("Vitri",vitri_Re.findAll());
			modelMap.addAttribute("Vitri",vitri_Re.findById(vitri_id).get());
			return("backend/update_vitri");
		}
		
		@RequestMapping(value="/updatevitri/{vitri_id}", method=RequestMethod.POST)
		public String update1(ModelMap modelMap,@Validated @ModelAttribute("Vitri") Vitri Vitri,BindingResult bindingResult, @PathVariable Integer vitri_id ) {
			 if (bindingResult.hasErrors()) {
				return "backend/update_vitri";
			}
			 
			if (vitri_Re.findById(vitri_id).isPresent()) {
				Vitri foundvitri = vitri_Re.findById(vitri_id).get();
				
				foundvitri.setVtkinhdo(Vitri.getVtkinhdo());
				foundvitri.setVtvido(Vitri.getVtvido());
				
				vitri_Re.save(foundvitri);
			}
			return "redirect:/vitri";
		}
		
	 // xoa vi tri
	 @RequestMapping(value = "/deletevitri/{vitri_id}", method = RequestMethod.POST)
	 public String deletevitri(ModelMap modelMap, @PathVariable Integer vitri_id) {
	    vitri_Re.deleteById(vitri_id);
	    return "redirect:/vitri";
	    }

	
	 
	

}
