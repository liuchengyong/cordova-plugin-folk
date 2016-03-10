/*
       Licensed to the Apache Software Foundation (ASF) under one
       or more contributor license agreements.  See the NOTICE file
       distributed with this work for additional information
       regarding copyright ownership.  The ASF licenses this file
       to you under the Apache License, Version 2.0 (the
       "License"); you may not use this file except in compliance
       with the License.  You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing,
       software distributed under the License is distributed on an
       "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
       KIND, either express or implied.  See the License for the
       specific language governing permissions and limitations
       under the License.
*/
package com.luoteng.folk.plugins;

import android.widget.Toast;

import com.luoteng.folk.activity.TopicDetailActivity_;
import com.luoteng.folk.activity.cordova.InfoDetailActivity;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaArgs;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONException;

/**
 * 跳转的plugin
 * @author mengxiangcheng
 *
 */
public class FolkPlugin extends CordovaPlugin {

    static String TAG = "FolkPlugin";

    public boolean execute(String action, CordovaArgs args, final CallbackContext callbackContext) throws JSONException {

        if (action.equals("topicDetail")) {
            String topicId = args.getString(0);
            callbackContext.success();
            return true;
        }else if(action.equals("articleId")) {
            callbackContext.success("05654BA6-873D-48E0-BBC1-C60378503A81");
            return true;
        }
        return false;
    }


}
