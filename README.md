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
			 


함수



		$('#summernote').summernote('insertText', 쓸 텍스트);

		// 비활성화
		$('#summernote').summernote('disable');

		// 활성화
		$('#summernote').summernote('enable');

		// 리셋
		$('#summernote').summernote('reset');

		//  뒤로가기
		$('#summernote').summernote('undo');

		// 앞으로가기
		$('#summernote').summernote('redo');
      
      
<입력화면>

![image](https://user-images.githubusercontent.com/84279882/132457578-22234948-148d-4f67-8b3c-688df24c9b81.png)

<저장 후 DB에서 가져온 화면>

![image](https://user-images.githubusercontent.com/84279882/132457828-85c9e1c1-f77c-4167-8f09-f28984b971c5.png)

