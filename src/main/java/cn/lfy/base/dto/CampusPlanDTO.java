package cn.lfy.base.dto;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import lombok.Data;

@Data
public class CampusPlanDTO {

	@NotBlank(message = "{position.name.null}")  
    @Length(min = 2, max = 5, message = "{position.name.length}")  
	private String positionName;  
	@Valid
	private Object obj;  
}
