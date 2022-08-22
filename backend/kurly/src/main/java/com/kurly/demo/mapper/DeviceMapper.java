package com.kurly.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_USING;

@Mapper
public interface DeviceMapper {

	@Select(" SELECT * FROM TB_LO_DEVICE ")
	public List<TB_LO_DEVICE> selectAll();
	
	@Select(" SELECT * FROM TB_LO_USING WHERE DEV_ID=#{DEV_ID} ")
	public List<TB_LO_USING> selectHist(String DEV_ID);
	
	// 현재 사용중인 장치정보 가져오기
	@Select(" SELECT * FROM TB_LO_USING WHERE EMP_ID=#{EMP_ID} AND USE_END IS NULL ")
	public TB_LO_USING selectInUse(String EMP_ID);
	
	// TB_LO_DEVICE 단말기상태 상태 변경
	@Update(" UPDATE TB_LO_DEVICE SET DEV_STAT=#{DEV_STAT} WHERE DEV_ID=#{DEV_ID} ")
	public int updateStatus(TB_LO_DEVICE dto);
	
	// TB_LO_USING 이용상태 이용완료로 변경 및 반납일시 처리
	@Update(" UPDATE TB_LO_USING SET USE_STAT='이용완료', USE_END=NOW() WHERE USE_ID=#{USE_ID} ")
	public int returnDevice(TB_LO_USING dto);
	
}
