package com.gxkjt.user.utils;

import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class PasswordHelper {

	private static final String algorithmName = "md5";
	private static final int hashIterations = 2;

	public static void passwordEncryption(Map<String, String> params) {
		String salt = new SecureRandomNumberGenerator().nextBytes().toHex();
		String newPassword = new SimpleHash(algorithmName,
				params.get("password"), ByteSource.Util.bytes(params
						.get("user_name") + salt), hashIterations).toHex();
		params.put("password", newPassword);
		params.put("salt", salt);
	}
	
	public static String getPassword(String userName,String password,String salt) {
		String newPassword = new SimpleHash(algorithmName,
				password, ByteSource.Util.bytes(userName + salt), hashIterations).toHex();
		return  newPassword;
	}
	
	public static void main(String[] args) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("password", "2");
		map.put("user_name", "admin");
		PasswordHelper.passwordEncryption(map);
		System.out.println(map.get("password"));
		System.out.println(PasswordHelper.getPassword("admin", "2", map.get("salt").toString()));
		System.out.println(map.get("salt").toString());
	}
	
	public static Map<String,String> crateNewUser(Map<String, String> params) {
		String salt = new SecureRandomNumberGenerator().nextBytes().toHex();
		String newPassword = new SimpleHash(algorithmName,
				params.get("password"), ByteSource.Util.bytes(params
						.get("user_name") + salt), hashIterations).toHex();
		params.put("password", newPassword);
		params.put("salt", salt);
		return  params;
	}
}
