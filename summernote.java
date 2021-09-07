/* 써머노트 insert */
	@RequestMapping(value = "uploadSummernoteImageFile.bo", produces = "application/json; charset=utf8")
	@ResponseBody
	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		JsonObject jsonObject = new JsonObject();

		String root = request.getSession().getServletContext().getRealPath("resources");
		String fileRoot = root + "/fileupload/";

		File folder = new File(fileRoot);
		if (!folder.exists()) {
			folder.mkdirs();
		}

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String originalFileName = file.getOriginalFilename();
		String savedFileName = sdf.format(new Date(System.currentTimeMillis())) + "."
				+ originalFileName.substring(originalFileName.lastIndexOf(".") + 1);

		// String renamePath = folder + "\\" + savedFileName;

		File targetFile = new File(fileRoot + savedFileName);

		try {
			InputStream fileStream = file.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
			jsonObject.addProperty("url", "/mycode/resources/fileupload/" + savedFileName); // contextroot + resources
																								// 저장할 내부 폴더명
			jsonObject.addProperty("responseCode", "success");

		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile); // 저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		String a = jsonObject.toString();
		return a;
	}
