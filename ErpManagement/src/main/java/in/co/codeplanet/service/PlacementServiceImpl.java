package in.co.codeplanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.PlacementDao;
import in.co.codeplanet.model.Placement_Details;

@Service
public class PlacementServiceImpl implements PlacementService {
	
	@Autowired
	PlacementDao placementDao;

	@Override
	public List<Placement_Details> getPlacementDetail() {
		return placementDao.getPlacementDetail();
	}

	@Override
	public boolean addPlacementDetail(Placement_Details placementDetails) {
		return placementDao.addPlacementDetail(placementDetails);
	}

	@Override
	public int updatePlacementDetails(Placement_Details placementDetails) {
		return placementDao.updatePlacementDetails(placementDetails);
	}

	@Override
	public boolean deletePlacementDetails(Placement_Details placementDetails) {
		return placementDao.deletePlacementDetails(placementDetails);
	}

}
