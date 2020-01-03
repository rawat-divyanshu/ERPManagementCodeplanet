package in.co.codeplanet.dao;

import java.util.List;

import in.co.codeplanet.model.Placement_Details;

public interface PlacementDao {

	List<Placement_Details> getPlacementDetail();

	boolean addPlacementDetail(Placement_Details placementDetails);

	int updatePlacementDetails(Placement_Details placementDetails);

	boolean deletePlacementDetails(Placement_Details placementDetails);

}
