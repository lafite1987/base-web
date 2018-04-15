package cn.lfy.base.ctrl;

import javax.validation.Valid;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.lfy.base.dto.CampusPlanDTO;
import cn.lfy.common.Result;
import cn.lfy.common.exception.ErrorCode;
import cn.lfy.common.exception.GlobalException;

@RestController
public class TestCtrl {

	@RequestMapping(value = "/test", method = {RequestMethod.GET})
	public Result<String> test(int type) {
		if(type == 1) {
			throw GlobalException.newGlobalException(ErrorCode.NO_LOGIN);
		}
		Result<String> result = Result.fail();
		return result;
	}
	
	@RequestMapping(value = "/query", method = {RequestMethod.POST})  
    public Result<Void> queryList(@Valid @RequestBody CampusPlanDTO campusPlanDTO) {  
		Result<Void> result = Result.success();
		if("d123".equals(campusPlanDTO.getPositionName())) {
			try {
				Long.parseLong(campusPlanDTO.getPositionName());
			} catch (Exception e) {
				throw GlobalException.newGlobalException(ErrorCode.PARAM_INVALID, e, "positionName");
			}
		}
		return result;
	}
}
