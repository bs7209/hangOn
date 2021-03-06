package kr.co.hangOn.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangOn.repository.domain.User;
import kr.co.hangOn.repository.mapper.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper mapper;
	
	@Override
	public User login(String userEmail) throws Exception {
		return mapper.login(userEmail);
	}

	@Override
	public void stateCodeChanger(User loginUser) {
		mapper.stateCodeChanger(loginUser);
	}

	@Override
	public int emailCheck(String userEmail) {
		return mapper.emailCheck(userEmail);
	}

	@Override
	public void register(User user) {
		mapper.register(user);
	}

	@Override
	public User findAccount(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatePw(User user) {
		mapper.updatePw(user);
	}

	@Override
	public void leaveUser(String userEmail) {
		mapper.leaveUser(userEmail);
	}

}
