package com.ssm.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ssm.domain.Code;
import com.ssm.domain.Result;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.UriUtils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
public class SmartPlanningController {
    public static String URL = "https://api.map.baidu.com/place/v2/search?";
    public static String AK = "b73nSGZGq1qiSzH7EWGOYvEolvYnjRH6";

//AI分析
    @ResponseBody
    @PostMapping("/AI/{msg}")
    public Result AI(@PathVariable String msg){
        System.out.println("开始");
        try {
            URL url = new URL("https://api.atomecho.cn/open/text-chat/v1");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("S-Auth-Secret", "1BE76BD8CB17C4C55FD79D4A5204D41AB13B808F66A9AE8DD8D4E9D34D0CFD41");
            conn.setRequestProperty("S-Auth-ApiKey", "474d3974396ddadae3a6e3d1ec96047a");
            conn.setDoOutput(true);

            String content = msg;

            String jsonInputString = "{\n" +
                    "\"param\": {\n" +
                    "\"model\": \"3bf4d1af-38ce-4e94-939e-b1002b0b8455\",\n" +
                    "\"stream\": false\n" +
                    "},\n" +
                    "\"messages\": [\n" +
                    "{\n" +
                    "\"role\": \"Human\",\n" +
                    "\"content\": \"" + content + "\"\n" +
                    "}\n" +
                    "]\n" +
                    "}";

            byte[] input = jsonInputString.getBytes(StandardCharsets.UTF_8);
            OutputStream outputStream = conn.getOutputStream();
            outputStream.write(input, 0, input.length);

            int responseCode = conn.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String line;
                StringBuilder response = new StringBuilder();
                while ((line = reader.readLine()) != null) {
                    response.append(line);
                }
                reader.close();

                String jsonString = response.toString();
                JSONObject jsonObject = new JSONObject(jsonString);
                String newcontent = jsonObject.getJSONObject("data").getString("content");

                String newText = newcontent.replaceAll("\\n", "");
                conn.disconnect();
                System.out.println(newText);
//返回处理好的ai分析结果
                return new Result(newText);
            } else {
                System.out.println("Error: " + responseCode);
                conn.disconnect();
                return new Result(responseCode);
            }

        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }
        return new Result();
    }

}
