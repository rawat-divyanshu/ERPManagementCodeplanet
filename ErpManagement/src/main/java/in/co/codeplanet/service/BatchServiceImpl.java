package in.co.codeplanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.co.codeplanet.dao.BatchDao;
import in.co.codeplanet.model.Batch;

@Service
public class BatchServiceImpl implements BatchService{
	
	@Autowired
	BatchDao batchDao;

	@Override
	public List<Batch> getBatchDetail() {
		return batchDao.getBatchDetail();
	}

	@Override
	public List<Batch> getSessionDetail() {
		return batchDao.getSessionDetail();
	}

	@Override
	public List<Batch> getFacultyDetail() {
		return batchDao.getFacultyDetail();
	}

	@Override
	public boolean addBatchDetail(Batch batch) {
		return batchDao.addBatchDetail(batch);
	}

	@Override
	public int updateBatchDetail(Batch batch) {
		return batchDao.updateBatchDetail(batch);
	}

	@Override
	public List<Batch> availableBatchDetail(Batch batch) {
		return batchDao.availableBatchDetail(batch);
	}

	@Override
	public boolean deleteBatchDetail(Batch batch) {
		return batchDao.deleteBatchDetail(batch);
	}

	@Override
	public int inActiveBatchDetail(Batch batch) {
		return batchDao.inActiveBatchDetail(batch);
	}

	@Override
	public int activeBatchDetail(Batch batch) {
		return batchDao.activeBatchDetail(batch);
	}

	
	
}
