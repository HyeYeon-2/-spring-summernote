# -spring-summernote

썸머노트 기본 설정, 다중 이미지 업로드

root-context.xml

      		<bean id="multipartResolver" class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
		    		<property name="maxUploadSize" value="100000000"/>
		    		<property name="maxInMemorySize" value="100000000"/>
	    		</bean>
      
      
      
pom.xml

      		<!-- https://mvnrepository.com/artifact/commons-io/commons-io -->
		  	<dependency>
			  <groupId>commons-io</groupId>
			  <artifactId>commons-io</artifactId>
			  <version>2.4</version>
		 	 </dependency>
      
      
      		<!-- https://mvnrepository.com/artifact/com.googlecode.json-simple/json-simple -->
		  	<dependency>
			  <groupId>com.googlecode.json-simple</groupId>
			  <artifactId>json-simple</artifactId>
			  <version>1.1.1</version>
		  	</dependency>
      
      
      		<!-- https://mvnrepository.com/artifact/com.google.code.gson/gson -->
		  	<dependency>
			  <groupId>com.google.code.gson</groupId>
			  <artifactId>gson</artifactId>
			  <version>2.8.5</version>
		 	 </dependency>
      
      
