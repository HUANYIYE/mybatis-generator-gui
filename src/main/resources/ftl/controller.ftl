package ${basePackage}.controller;
import ${servicePackage}.bean.${modelNameUpperCamel};
import ${servicePackage}.service.${modelNameUpperCamel}Service;
import ${servicePackage}.bean.${modelNameUpperCamel}Example;
import com.github.pagehelper.*;
import org.slf4j.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import com.xcar.ad.push.common.util.JsonUtils;
import io.swagger.annotations.Api;
import java.util.List;

/**
 *
 * Created by ${author} on ${date}.
 */

@Slf4j
@RestController
@Api("generator")
public class ${modelNameUpperCamel}Controller {


    @Autowired
    ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    @PostMapping("/add")
    public String add(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        ${modelNameLowerCamel}Service.save(${modelNameLowerCamel});
        return JsonUtils.encode(true);
    }

    @DeleteMapping("/delete")
    public String delete(@RequestParam Long id) {
	    ${modelNameLowerCamel}Service.deleteById(id);
	    return JsonUtils.encode(true);
    }

    @PutMapping("/update")
    public String update(${modelNameUpperCamel} ${modelNameLowerCamel}) {
	    ${modelNameLowerCamel}Service.update(${modelNameLowerCamel});
	    return JsonUtils.encode(true);
    }

    @GetMapping("/get")
    public String get(@RequestParam Long id) {
        ${modelNameUpperCamel} ${modelNameLowerCamel} = ${modelNameLowerCamel}Service.findById(id);
        return JsonUtils.encode(${modelNameLowerCamel});
    }

    @GetMapping("/list")
    public String list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size, ${modelNameUpperCamel} ${modelNameLowerCamel}) {
        PageHelper.startPage(page, size);
        ${modelNameUpperCamel}Example ${modelNameLowerCamel}Example = new ${modelNameUpperCamel}Example();
        List<${modelNameUpperCamel}> list = ${modelNameLowerCamel}Service.findAll(${modelNameLowerCamel}Example);
        PageInfo pageInfo = new PageInfo(list);
        return JsonUtils.encode(pageInfo);
    }
}
