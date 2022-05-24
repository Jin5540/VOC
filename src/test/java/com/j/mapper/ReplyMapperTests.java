package com.j.mapper;

import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.timf.domain.ReplyVO;
import com.timf.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class ReplyMapperTests {

	
	
	@Setter(onMethod_ = @Autowired)
	  private ReplyMapper mapper;
	  
	  @Test
	  public void testMapper() {
		  log.info(mapper);
	  }
	  //public void testCreate() {
	    
     // IntStream.rangeClosed(1,10).forEach( i -> {
    	//  ReplyVO vo = new ReplyVO();
    	  
    	//  vo.setAid(1);
    	///  vo.setReply("댓글테스트");
    	///  vo.setReplyer("replyer");
    	  
    	 // mapper.insert(vo);
     //});
	    
	  //}
	  
	 // @Test
	  //public void testRead() {
	  
		//long targetRno=32L;  
	//	ReplyVO vo=mapper.read(targetRno);
     // log.info(mapper);
	  //  
	//  }
//
	  


}
