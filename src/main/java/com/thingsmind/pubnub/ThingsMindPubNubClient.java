package com.thingsmind.pubnub;

import com.pubnub.api.PNConfiguration;
import com.pubnub.api.PubNub;
import com.pubnub.api.callbacks.SubscribeCallback;
import com.pubnub.api.models.consumer.PNStatus;
import com.pubnub.api.models.consumer.pubsub.PNMessageResult;
import com.pubnub.api.models.consumer.pubsub.PNPresenceEventResult;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.Arrays;

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

        PubNub pubnub;

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

                    PNConfiguration pnConfiguration = new PNConfiguration();
                    pnConfiguration.setSubscribeKey("sub-c-f7b16a98-a291-11e6-a1b1-0619f8945a4f");
                    pnConfiguration.setPublishKey("pub-c-5b4ed4d3-8921-45cb-8151-d48aaebb2467");
                    pnConfiguration.setSecure(false);

                    pubnub = new PubNub(pnConfiguration);
                    pubnub.addListener(new SubscribeCallback() {
                        @Override
                        public void status(PubNub pubNub, PNStatus pnStatus) {

                        }

                        @Override
                        public void message(PubNub pubNub, PNMessageResult message) {
                            System.out.println("Message ::" + message.getMessage());
                            System.out.println("Channel ::" + message.getChannel());
                            PrintWriter writer;
                            try {
                                writer = new PrintWriter(new File(this.getClass().getResource("OnBoardingFile.txt").getPath()));
                                writer.print("");
                                writer.print("ONBOARDED");
                                writer.close();
                            } catch (FileNotFoundException e) {
                                e.printStackTrace();
                            }
                        }

                        @Override
                        public void presence(PubNub pubNub, PNPresenceEventResult pnPresenceEventResult) {

                        }
                    });

                    pubnub.subscribe().channels(Arrays.asList("onboard")).execute();
                }
            }
        }
    }
}
