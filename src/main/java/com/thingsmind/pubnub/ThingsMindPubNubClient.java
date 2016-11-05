package com.thingsmind.pubnub;

import com.pubnub.api.Callback;
import com.pubnub.api.Pubnub;
import com.pubnub.api.PubnubException;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 * Created by VST on 05-11-2016.
 */
public class ThingsMindPubNubClient {

    public void initialize() {
        ThingsMindPubNubThread thread = new ThingsMindPubNubThread();
        thread.start();
    }

    public static class ThingsMindPubNubThread extends Thread {

        public boolean isStop() {
            return stop;
        }

        public void setStop(boolean stop) {
            this.stop = stop;
        }

        boolean stop = false;

        Pubnub pubnub;

        /**
         * When an object implementing interface <code>Runnable</code> is used
         * to create a thread, starting the thread causes the object's
         * <code>run</code> method to be called in that separately executing
         * thread.
         * <p/>
         * The general contract of the method <code>run</code> is that it may
         * take any action whatsoever.
         *
         * @see Thread#run()
         */
        @Override
        public void run() {
            while (!stop) {
                if (pubnub == null) {
                    System.out.println("Started listening for pubnub message...............");
                    PrintWriter writer;
                    try {
                        writer = new PrintWriter(new File(this.getClass().getResource("OnBoardingFile.txt").getPath()));
                        writer.println("ONBOARDED");
                        writer.close();
                    } catch (FileNotFoundException e) {
                        e.printStackTrace();
                    }
                    pubnub = new Pubnub("pub-c-5b4ed4d3-8921-45cb-8151-d48aaebb2467", "sub-c-f7b16a98-a291-11e6-a1b1-0619f8945a4f");
                    try {
                        pubnub.subscribe("onboard", new Callback() {
                            /**
                             * This callback will be invoked when a message is received on the channel
                             *
                             * @param channel Channel Name
                             * @param message Message
                             */
                            @Override
                            public void successCallback(String channel, Object message) {
                                PrintWriter writer;
                                try {
                                    writer = new PrintWriter(new File(this.getClass().getResource("OnBoardingFile.txt").getPath()));
                                    writer.println("ONBOARDED");
                                    writer.close();
                                } catch (FileNotFoundException e) {
                                    e.printStackTrace();
                                }
                            }
                        });
                    } catch (PubnubException e) {
                        stop = true;
                        e.printStackTrace();
                    }
                }
            }
        }
    }
}
