package ${basePackage}.controller.${sign};
import ${servicePackage}.bean.${modelNameUpperCamel};
import ${servicePackage}.service.${sign}.${modelNameUpperCamel}Service;
import ${servicePackage}.bean.${modelNameUpperCamel}Example;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import lombok.extern.slf4j.Slf4j;
import com.xcar.ad.push.common.util.JsonUtils;


import java.util.List;

/**
 *
 * Created by ${author} on ${date}.
 */
@RestController
@Slf4j
public class ${modelNameUpperCamel}Controller {

    @Autowired
    ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    @RequestMapping("/add")
    @ResponseBody
    public String add(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.save(${modelNameLowerCamel});
        return JsonUtils.encode(true);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(@RequestParam Integer id) {
	    ${modelNameLowerCamel}Service.deleteById(id);
	    return JsonUtils.encode(true);
    }

    @RequestMapping("/update")
    @ResponseBody
    public String update(${modelNameUpperCamel} ${modelNameLowerCamel}) {
	    ${modelNameLowerCamel}Service.update(${modelNameLowerCamel});
	    return JsonUtils.encode(true);
    }

    @RequestMapping("/detail")
    @ResponseBody
    public String detail(@RequestParam Integer id) {
        ${modelNameUpperCamel} ${modelNameLowerCamel} = ${modelNameLowerCamel}Service.findById(id);
        return JsonUtils.encode(${modelNameLowerCamel});
    }

    @RequestMapping("/list")
    @ResponseBody
    public String list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size, ${modelNameUpperCamel} ${modelNameLowerCamel}) {
        PageHelper.startPage(page, size);
        ${modelNameUpperCamel}Example example = new ${modelNameUpperCamel}Example();
        List<${modelNameUpperCamel}> list = ${modelNameLowerCamel}Service.findAll(example);
        PageInfo pageInfo = new PageInfo(list);
        return JsonUtils.encode(pageInfo);
    }
}
