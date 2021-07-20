package poly.service;

import poly.dto.KakaoDTO;
import poly.dto.UserDTO;
import poly.dto.UserRegDTO;

public interface IUserService {

	UserDTO getLoginInfo(UserDTO uDTO); // 로그인 정보 입력                                                              

	KakaoDTO kakaoLoginForDgService(KakaoDTO pDTO); //  카카오 인증을 통해 받아온 이메일로 서비스 로그인 시도

	//int regUserInfo(UserDTO uDTO);

	int getEmailCheck(String email); // 로그인 아이디 확인 아작스

	UserDTO getFindUserInfo(UserDTO userpDTO) throws Exception; // 유저 이메일 찾기 위한 메드

	int updateUserPwdInfo(UserDTO pDTO) throws Exception; // 유저 비밀번호 변경 메서드

	int getregEmailCheck(String email); // 회원가입 이메일 확인 아작스

	int UserRegInfo(UserRegDTO tDTO) throws Exception; // 회원가입 정보 입력

}
