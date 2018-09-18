//package com.qf.logistics.manage.dao;
//
//import com.qf.logistics.manage.DataBig;
//import com.qf.logistics.manage.pojo.po.Goods;
//import com.sun.org.apache.bcel.internal.generic.RETURN;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import java.util.UUID;
//
///**
// * Created by 123 on 2018/9/4.
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration({"classpath:spring/spring-dao-test.xml"})
//public class GoodsMapperTest {
//    @Autowired
//    private BigDataT bigDataT;
//
//    @Test
//    public void insertSelectiveTest(){
//        DataBig dataBig=new DataBig();
//        for (int i = 1000001; i <2000001; i++) {
//            dataBig.setId(i);
//            dataBig.setEmail(uuids()+"@qq.com");
//
//            if (i%2==0) {
//                dataBig.setGender("男");
//                dataBig.setName("张"+i);
//            }else {
//                dataBig.setGender("女");
//                dataBig.setName("李"+i);
//            }
//
//            bigDataT.insert(dataBig);
//
//        }
//    }
//
//    public String uuids(){
//       return UUID.randomUUID().toString().replace("-","");
//    }
//}
