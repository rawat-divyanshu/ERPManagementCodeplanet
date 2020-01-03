package in.co.codeplanet.service;

import java.util.List;

import in.co.codeplanet.model.Placement_Details;

public interface PlacementService {

	List<Placement_Details> getPlacementDetail();

	boolean addPlacementDetail(Placement_Details placementDetails);

	int updatePlacementDetails(Placement_Details placementDetails);

	boolean deletePlacementDetails(Placement_Details placementDetails);

}
