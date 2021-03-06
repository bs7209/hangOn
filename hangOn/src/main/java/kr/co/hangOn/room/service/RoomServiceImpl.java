package kr.co.hangOn.room.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hangOn.repository.domain.History;
import kr.co.hangOn.repository.domain.RoomMember;
import kr.co.hangOn.repository.mapper.HistoryMapper;
import kr.co.hangOn.repository.mapper.RoomMapper;

@Service("roomService")
public class RoomServiceImpl implements RoomService {
	
	@Autowired
	private RoomMapper mapper;
	@Autowired
	private HistoryMapper mapper1;
	
	@Override
	public void roomMemberUpdate(RoomMember roomMember) {
		roomMember.setRoomNo(mapper.roomByJoinCode(roomMember.getRoomJoinCode())); 
		mapper.updateRoomMember(roomMember);
	}

	@Override
	public void historyInsert(History history,String roomJoinCode) {
		history.setRoomNo(mapper.roomByJoinCode(roomJoinCode));
		mapper1.insertHistory(history);
	}

	@Override
	public String selectRoomName(String roomJoinCode) {
		return mapper.selectRoomName(roomJoinCode);
	}

	@Override
	public int selectRoomNo(String joinCode) {
		return mapper.roomByJoinCode(joinCode);
	}

	@Override
	public void updateRoomMemberConnect(RoomMember member) {
		mapper.updateRoomMemberConnect(member);
	}
	
}
