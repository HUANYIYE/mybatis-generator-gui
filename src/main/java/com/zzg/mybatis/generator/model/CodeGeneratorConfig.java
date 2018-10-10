package com.zzg.mybatis.generator.model;

/**
 * 配置信息变量
 * Created by zhh on 2017/09/27.
 */
public class CodeGeneratorConfig {
	
	// 项目在硬盘上的基础路径
	protected static final String PROJECT_PATH = System.getProperty("user.dir");
	// 项目路径
	protected static String JAVA_PATH;

	// 资源文件路径
	protected static String RESOURCES_PATH;
	// 模板存放位置
	protected static String TEMPLATE_FILE_PATH;
	
	// SERVICE项目基础包
	protected static String SERVICE_BASE_PACKAGE;
	// Controller项目基础包
	protected static String CONTROLLER_BASE_PACKAGE;

	// 项目 Service 所在包
	protected static String SERVICE_PACKAGE;
	// 项目 Service 实现类所在包
	protected static String SERVICE_IMPL_PACKAGE;
	// 项目 Controller 所在包
	protected static String CONTROLLER_PACKAGE;
	
	// 生成的 Service 存放路径
	protected static String PACKAGE_PATH_SERVICE;
	// 生成的 Service 实现存放路径
	protected static String PACKAGE_PATH_SERVICE_IMPL;
	// 生成的 Controller 存放路径
	protected static String PACKAGE_PATH_CONTROLLER;
	// 通用 Service 层 基础接口完全限定名
	protected static String SERVICE_INTERFACE_REFERENCE;
	// 模板注释中 @author
	protected static String AUTHOR;
	// 模板注释中 @date
	protected static String DATE;
	
}
