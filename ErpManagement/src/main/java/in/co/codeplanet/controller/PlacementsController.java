package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import in.co.codeplanet.model.Placement_Details;
import in.co.codeplanet.service.PlacementService;

@Controller
public class PlacementsController {

	@Autowired
	PlacementService placementService;

	@RequestMapping(value = "placements")
	public String placements(HttpServletRequest request, HttpSession session, Placement_Details placementDetails) {
		if ((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			List<Placement_Details> l = placementService.getPlacementDetail();
			request.setAttribute("list", l);
			return "placement";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "addPlacementDetails")
	public String addPlacementDetails(HttpServletRequest request, HttpSession session,
			Placement_Details placementDetails) {
		if ((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			boolean l = placementService.addPlacementDetail(placementDetails);
			return "redirect:placements";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "updatePlacementDetails")
	public String updatePlacementDetails(HttpServletRequest request, HttpSession session,
			Placement_Details placementDetails) {
		if ((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			int l = placementService.updatePlacementDetails(placementDetails);
			return "redirect:placements";
		} else {
			return "index";
		}
	}

	@RequestMapping(value = "deletePlacementDetail")
	public String deletePlacementDetails(HttpServletRequest request, HttpSession session,
			Placement_Details placementDetails) {
		if ((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy", (String) session.getAttribute("createdBy"));
			boolean l = placementService.deletePlacementDetails(placementDetails);
			return "redirect:placements";
		} else {
			return "index";
		}
	}
}
