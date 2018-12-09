package com.jason;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;

import java.util.Collections;

public class MybatisPlusGenerator {


    public final static String OUTPUT_ROOT_PATH = "F:/generatorCode";

    public static void main(String[] args) {
        // 全局配置
        final GlobalConfig globalConfig = new GlobalConfig()
                .setOutputDir(OUTPUT_ROOT_PATH + "/src/main/java")//输出目录
                .setFileOverride(true)// 是否覆盖文件
                .setActiveRecord(true)// 开启 activeRecord 模式
                .setEnableCache(false)// XML 二级缓存
                .setBaseResultMap(true)// XML ResultMap
                .setBaseColumnList(true)// XML columList
                .setOpen(true)//生成后打开文件夹
                .setAuthor("lpli")
                // 自定义文件命名，注意 %s 会自动填充表实体属性！
                .setMapperName("%sMapper")
                .setXmlName("%sMapper")
                .setServiceName("%sService")
                .setServiceImplName("%sServiceImpl")
                .setControllerName("%sController");
        // 代码生成器
        AutoGenerator mpg = new AutoGenerator().setGlobalConfig(globalConfig).setDataSource(
                // 数据源配置
                new DataSourceConfig()
                        .setDbType(DbType.MYSQL)// 数据库类型
                        .setDriverName("com.mysql.jdbc.Driver")
                        .setUsername("vlog")
                        .setPassword("123456")
                        .setUrl("jdbc:mysql://127.0.0.1:3306/test?characterEncoding=utf8")
        ).setPackageInfo(
                // 包配置
                new PackageConfig()
                        .setParent("com.jason")// 自定义包路径
                        .setController("controller")// 这里是控制器包名，默认 web
                        .setEntity("entity")
                        .setMapper("dao")
                        .setService("service")
                        .setServiceImpl("service.impl")
        ).setCfg(new InjectionConfig() {
            @Override
            public void initMap() {

            }
        }.setFileOutConfigList(Collections.<FileOutConfig>singletonList(new FileOutConfig("/templates/mapper.xml.vm") {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return OUTPUT_ROOT_PATH + "/src/main/resources/mapper/" + tableInfo.getEntityName() + "Mapper.xml";
            }
        }))).setTemplate(new TemplateConfig().setXml(null));
        // 执行生成
        mpg.execute();
    }


}
