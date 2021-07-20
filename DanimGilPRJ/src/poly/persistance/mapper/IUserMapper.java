package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.KakaoDTO;
import poly.dto.UserDTO;
import poly.dto.UserRegDTO;

@Mapper("UserMapper")
public interface IUserMapper {

	UserDTO getLoginInfo(UserDTO uDTO); // 일반적인 로그인 시도

	List<UserDTO> getUserList(UserDTO uDTO); // 유저 정보 가져오기

	KakaoDTO kakaoLoginForDgService(KakaoDTO pDTO); // 카카오 로그인을 통한 로그인 후 유저정보 가져오기

	int regUserInfo(UserDTO uDTO);

	UserDTO getEmailCheck(UserDTO pDTO); // 로그인 시 아작스 

	UserDTO getFindUserInfo(UserDTO userpDTO); // 회원 정보 찾기 위한 메서드

	int updateUserPwdInfo(UserDTO pDTO) throws Exception; // 회원 비밀번호 변경 메서드

	UserRegDTO getregEmailCheck(UserRegDTO tDTO); // 회원가입 시 이메일 확인 아작스

	int UserRegInfo(UserRegDTO tDTO);

	
}
