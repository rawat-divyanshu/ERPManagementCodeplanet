package in.co.codeplanet.service;

import java.util.List;

import in.co.codeplanet.model.Batch;

public interface BatchService {

	List<Batch> getBatchDetail();

	List<Batch> getSessionDetail();

	List<Batch> getFacultyDetail();

	boolean addBatchDetail(Batch batch);

	int updateBatchDetail(Batch batch);

	List<Batch> availableBatchDetail(Batch batch);

	boolean deleteBatchDetail(Batch batch);

	int inActiveBatchDetail(Batch batch);

	int activeBatchDetail(Batch batch);

}
