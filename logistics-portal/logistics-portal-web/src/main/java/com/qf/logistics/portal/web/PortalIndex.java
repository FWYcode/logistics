package com.qf.logistics.portal.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2018/9/12.
 */
@Controller
public class PortalIndex {
    @RequestMapping("/{index}")
    public String portalIndex(@PathVariable String index){
        return index;
    }
}
