package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import poly.dto.KakaoDTO;
import poly.dto.UserDTO;
import poly.dto.UserRegDTO;
import poly.persistance.mapper.IUserMapper;
import poly.service.IUserService;

@Service("UserService")
public class UserService implements IUserService{
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="UserMapper")
	private IUserMapper userMapper;

	@Override
	public UserDTO getLoginInfo(UserDTO uDTO) {
		
		return userMapper.getLoginInfo(uDTO);
	}

	
	  @Override public KakaoDTO kakaoLoginForDgService(KakaoDTO pDTO) {
	  
	  return userMapper.kakaoLoginForDgService(pDTO); }
	 

	/*
	 * @Override public int regUserInfo(UserDTO uDTO) {
	 * 
	 * return userMapper.regUserInfo(uDTO); }
	 */

	// 아작스로 이메일 정보 찾기
	@Override
	public int getEmailCheck(String email) {
		int res = 0;
		UserDTO pDTO = new UserDTO();
		pDTO.setId(email);
		UserDTO rDTO = new UserDTO();
		rDTO = userMapper.getEmailCheck(pDTO);
		if(rDTO != null) {
			res = 1;
		} else {
			res = 0;
		}
		return res;
	}
	
	@Override
	public int UserRegInfo(UserRegDTO tDTO) throws Exception {
		
		log.info("service 입구");
		return userMapper.UserRegInfo(tDTO);
	}
	
	// 아작스로 회원가입 이메일 정보 찾기
		@Override
		public int getregEmailCheck(String id) {
			int res = 0;
			UserRegDTO tDTO = new UserRegDTO();
			tDTO.setId(id);
			UserRegDTO kDTO = new UserRegDTO();
			kDTO = userMapper.getregEmailCheck(tDTO);
			if(kDTO != null) {
				res = 0;
			} else {
				res = 1;
			}
			return res;
		}

	// 유저 정보 착지 위한 메서드
	@Override
	public UserDTO getFindUserInfo(UserDTO userpDTO) throws Exception {
		log.info("유저 이메일 찾기 프로세스 실행");
		UserDTO rDTO = userMapper.getFindUserInfo(userpDTO);
		// 널처리 안하면 어떻게 되는 지 보여줌 
		// 메모리 올리기 처리 예시 
		if(rDTO == null ) {
			rDTO = new UserDTO();
		} 
		
		log.info("유저 이메일 찾기 프로세스 종료");
		return rDTO;
	}

	// 유저 비밀번호 변경 메서드
	@Override
	public int updateUserPwdInfo(UserDTO pDTO) throws Exception{
		int success = userMapper.updateUserPwdInfo(pDTO);
		
		int res = 0;
		if(success == 1) {
			res = 1;
		}
		
		return res;
	}
	
}
