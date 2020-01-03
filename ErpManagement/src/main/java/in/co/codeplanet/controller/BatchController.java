package in.co.codeplanet.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import in.co.codeplanet.model.Batch;
import in.co.codeplanet.service.BatchService;

@Controller
public class BatchController {

	
	@Autowired
	BatchService batchService;
	
	@RequestMapping(value="batch")
	public String batch(HttpServletRequest request, Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",batch.getCreatedBy());
			List<Batch> l=batchService.getBatchDetail();
			request.setAttribute("list",l);
			List<Batch> sessionDetail=batchService.getSessionDetail();
			List<Batch> faculty=batchService.getFacultyDetail();
			request.setAttribute("list1",sessionDetail);
			request.setAttribute("list2",faculty);
			return "batch";
		} else {
			return "index";
		}
	}
	
	@RequestMapping(value="addBatch")
	public String addBatch(HttpServletRequest request,Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			boolean l=batchService.addBatchDetail(batch);
			return "redirect:batch";
		} else {
			return "index";
		}
		
	}
	
	@RequestMapping(value="updateBatch")
	public String updateBatch(HttpServletRequest request,Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
	        request.setAttribute("createdBy",batch.getModifiedBy());
			int l=batchService.updateBatchDetail(batch);
			return "redirect:batch";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="showavailableBatch")
	public String showavailable(HttpServletRequest request,Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",(String) session.getAttribute("createdBy"));
			List<Batch> l=batchService.availableBatchDetail(batch);
			request.setAttribute("list",l);
			List<Batch> sessionDetail=batchService.getSessionDetail();
			List<Batch> faculty=batchService.getFacultyDetail();
			request.setAttribute("list1",sessionDetail);
			request.setAttribute("list2",faculty);
			return "batch";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="deletebatch")
	public String deletebatch(HttpServletRequest request,Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",batch.getCreatedBy());
			boolean l=batchService.deleteBatchDetail(batch);
			return "redirect:batch";
		} else {
			return "index";
		}
	}
	@RequestMapping(value="inActiveBatch")
	public String inActiveBatch(HttpServletRequest request,Batch batch, HttpSession session)
	{	
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",batch.getCreatedBy());
			int l=batchService.inActiveBatchDetail(batch);
			return "redirect:batch";
		} else {
			return "index";
		}

	}
	@RequestMapping(value="activeBatch")
	public String activeBatch(HttpServletRequest request,Batch batch, HttpSession session)
	{
		if((String) session.getAttribute("createdBy") != null) {
			request.setAttribute("createdBy",batch.getCreatedBy());
			int l=batchService.activeBatchDetail(batch);
			return "redirect:batch";
		} else {
			return "index";
		}

	}
}
