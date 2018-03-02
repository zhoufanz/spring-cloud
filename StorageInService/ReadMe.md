# StorageInService 目录结构说明
### com.sunlight
        为主目录，内置StorageInServiceApplication为项目的启动文件
### com.sunlight.storage.in 
        为入库业务的业务逻辑代码目录，其中包含了api,domain,boundary service,logic包
### com.sunlight.storage.in.api
        对外提供API访问，使用Springmvc来实现Restful风格的URL请求
### com.sunlight.storage.in.boundary.service
        边界服务，边界服务主要用来实现跨微服务使用，如果微服务A中需要调用微服务B和微服务C的话，可以在该包中完成跨服务的调用
### com.sunlight.storage.in.domain.po
        实体类，理论上该包下只存在该微服务自己所需的持久化对象
### com.sunlight.storage.in.domain.vo
        value object,值对象，用于返回给调用者的对象实体
### com.sunlight.storage.in.logic
        用于存放微服务自身的业务逻辑代码和数据库操作