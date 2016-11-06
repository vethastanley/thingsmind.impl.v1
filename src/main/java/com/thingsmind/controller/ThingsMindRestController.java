package com.thingsmind.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.*;

/**
 * Created by VST on 06-11-2016.
 */
@RestController
public class ThingsMindRestController {

    @RequestMapping(value = "/getOnboardedStatus", method = RequestMethod.GET)
    public ResponseEntity<String> getOnboardedStatus() throws IOException {
        System.out.println("getOnboardedStatus");
        String line = null;
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new FileReader(this.getClass().getResource("../pubnub/OnBoardingFile.txt").getPath()));
            line = reader.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (reader != null) {
                reader.close();
            }
        }

        return new ResponseEntity<String>(line, HttpStatus.OK);
    }

    @RequestMapping(value = "/clearOnboardingStatus", method = RequestMethod.PUT)
    public ResponseEntity<String> clearOnboardingStatus() {
        System.out.println("Onboarding Status Cleared");
        PrintWriter writer;
        try {
            writer = new PrintWriter(new File(this.getClass().getResource("../pubnub/OnBoardingFile.txt").getPath()));
            writer.print("");
            writer.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<String>("Cleared", HttpStatus.OK);
    }
}
