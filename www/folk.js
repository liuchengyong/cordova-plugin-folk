module.exports = {

    // 公共的方法
    imageShow: function(name, successCallback, errorCallback, isDebug) { //图片轮播
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "imageShow", [name]);
    },
    isDebug: function(successCallback, errorCallback) { //是否生产环境
        cordova.exec(successCallback, errorCallback, "Folk", "isDebug", []);
    },
    focusWeChat: function(successCallback, errorCallback) { //关注微信公众号
        cordova.exec(successCallback, errorCallback, "Folk", "focusWeChat", []);
    },
    getPostUrl: function(successCallback, errorCallback, isDebug) { //获取服务器的域名端口
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "getPostUrl", []);
    },
    doShare: function(msg, successCallback, errorCallback) { //第三方分享 weixin/weibo/friend/all
        cordova.exec(successCallback, errorCallback, "Folk", "doShare", [msg]);
    },
    getUser: function(successCallback, errorCallback) { //获得当前用户的信息
        cordova.exec(successCallback, errorCallback, "Folk", "getUser", []);
    },
    goLogin: function(successCallback, errorCallback) { //去登录页面
        cordova.exec(successCallback, errorCallback, "Folk", "goLogin", []);
    },
    getToken: function(successCallback, errorCallback) { //去登录页面
        cordova.exec(successCallback, errorCallback, "Folk", "getToken", []);
    },
    showToast: function(msg, successCallback, errorCallback, isDebug) { //show tooltip
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "showToast", [msg]);
    },



    //  资讯详情页
    articleId: function(successCallback, errorCallback) { //获取资讯详情id
        cordova.exec(successCallback, errorCallback, "Folk", "articleId", []);
    },

    commentsList: function(articleId, successCallback, errorCallback) { //跳转资讯评论列表
        cordova.exec(successCallback, errorCallback, "Folk", "commentsList", [articleId]);
    },

    topicDetail: function(name, successCallback, errorCallback) { //跳转点师详情
        cordova.exec(successCallback, errorCallback, "Folk", "topicDetail", [name]);
    },
    refreshCommentNum: function(articleId, successCallback, errorCallback) { //通知移动端跟新评论数量
        cordova.exec(successCallback, errorCallback, "Folk", "refreshCommentNum", [articleId]);
    },


    // 爆料详情页
    getBrokeDetailId: function(successCallback, errorCallback) { //获取爆料详情id
        cordova.exec(successCallback, errorCallback, "Folk", "getBrokeDetailId", []);
    },
    brokeReply: function(brokeId, successCallback, errorCallback) { //跳转资讯评论列表
        cordova.exec(successCallback, errorCallback, "Folk", "brokeReply", [brokeId]);
    },
    getBrokeDetail: function(msg, successCallback, errorCallback) { //获取爆料详情id
        cordova.exec(successCallback, errorCallback, "Folk", "getBrokeDetail", [msg]);
    },
    startComments: function(successCallback, errorCallback) { //开始评论
        cordova.exec(successCallback, errorCallback, "Folk", "startComments", []);
    },


    // dynamic detail page
    getDynamicDetail: function(msg, successCallback, errorCallback, isDebug) { //get dynamicDatail page baseNews
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "getDynamicDetail", [msg]);
    },
    goDynamicCommentList: function(msg, successCallback, errorCallback, isDebug) { //native skip dynamicComnentList activity
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "goDynamicCommentList", [msg]);
    },
    commitDynamicLike: function(msg, successCallback, errorCallback, isDebug) { //native skip dynamicComnentList activity
        cordova.exec(app.successCallback(successCallback, isDebug), errorCallback, "Folk", "commitDynamicLike", [msg]);
    },

    successCallback: function(callback, isDebug) { //open dedug modoule
        var debug = isDebug || false;
        var debugCallback = function(msg) {
            alert(msg);
            if (callback != undefined && callback != null) {
                callback(msg);
            }
        };
        return debug ? debugCallback : callback;
    }
};
