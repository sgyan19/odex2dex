.class public Lcom/ecarx/sdk/user/UserAPIImpl;
.super Lcom/ecarx/sdk/user/UserAPI;
.source "UserAPIImpl.java"


# static fields
.field public static final EXTRA_REFRESH_SUCCESS_TOKEN:Ljava/lang/String; = "RefreshSuccessToken"

.field public static final LOGIN_CANCELLED_ACTION:Ljava/lang/String; = "receiver.csp.login.cancelled.action"

.field public static final LOGIN_OUT_ACTION:Ljava/lang/String; = "receiver.csp.logout.action"

.field public static final LOGIN_SUCCESS_ACTION:Ljava/lang/String; = "receiver.csp.login.success.action"

.field public static final MEM_NEED_LOGOUT:Ljava/lang/String; = "receiver.csp.need.logout.action"

.field public static final MEM_NEED_REFRESH_TOKEN:Ljava/lang/String; = "receiver.csp.need.refresh.token.action"

.field public static final REFRESH_TOKEN_SUCCESS_ACTION:Ljava/lang/String; = "receiver.csp.refresh.token.success.action"

.field private static final TAG:Ljava/lang/String; = "UserAPI"


# instance fields
.field private intentFilter:Landroid/content/IntentFilter;

.field private loginBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCtx:Landroid/content/Context;

.field private mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;

.field private mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ecarx/sdk/user/UserAPI;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/ecarx/sdk/user/LoginConfig;->getSingleton(Landroid/content/Context;)Lcom/ecarx/sdk/user/LoginConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    .line 39
    return-void
.end method

.method private _setLoginCallback(Lcom/ecarx/sdk/user/callback/ILoginCallBack;)Z
    .registers 8
    .param p1, "callback"    # Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 153
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    if-nez v3, :cond_e

    .line 154
    const-string v2, "UserAPI"

    const-string v3, "setLoginCallBack, mCtx is null!"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_d
    return v1

    .line 157
    :cond_e
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    .line 158
    if-nez p1, :cond_2e

    .line 160
    :try_start_12
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->loginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    const-string v3, "UserAPI"

    const-string v4, "setLoginCallBack(null):unregisterReceiver:success"

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_22

    move v1, v2

    .line 162
    goto :goto_d

    .line 163
    :catch_22
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const-string v2, "UserAPI"

    const-string v3, "setLoginCallBack(null):unregisterReceiver:failed"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2e
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->loginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_39

    .line 170
    new-instance v3, Lcom/ecarx/sdk/user/UserAPIImpl$1;

    invoke-direct {v3, p0}, Lcom/ecarx/sdk/user/UserAPIImpl$1;-><init>(Lcom/ecarx/sdk/user/UserAPIImpl;)V

    iput-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->loginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    :cond_39
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    if-nez v3, :cond_60

    .line 215
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    .line 216
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    const-string v4, "receiver.csp.login.success.action"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    const-string v4, "receiver.csp.logout.action"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    const-string v4, "receiver.csp.login.cancelled.action"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    const-string v4, "receiver.csp.refresh.token.success.action"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    :cond_60
    :try_start_60
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    iget-object v4, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->loginBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    const-string v3, "UserAPI"

    const-string v4, "registerReceiver:success"

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_70} :catch_72

    move v1, v2

    .line 224
    goto :goto_d

    .line 225
    :catch_72
    move-exception v0

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "UserAPI"

    const-string v3, "registerReceiver:failed"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method static synthetic access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/ecarx/sdk/user/UserAPIImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    return-object v0
.end method

.method private handleAgeParse(Ljava/lang/String;)I
    .registers 3
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    const/4 v0, -0x1

    .line 148
    :goto_7
    return v0

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v2}, Lcom/ecarx/sdk/user/LoginConfig;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "token":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccessToken():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 81
    .end local v1    # "token":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 77
    :catch_1f
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const-string v2, "UserAPI"

    const-string v3, "getAccessToken()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method public getLoginUser()Lcom/ecarx/sdk/user/IUser;
    .registers 6

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/UserAPIImpl;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 120
    new-instance v1, Lcom/ecarx/sdk/user/UserInfoImpl;

    invoke-direct {v1}, Lcom/ecarx/sdk/user/UserInfoImpl;-><init>()V

    .line 121
    .local v1, "userInfo":Lcom/ecarx/sdk/user/UserInfoImpl;
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v2}, Lcom/ecarx/sdk/user/LoginConfig;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/user/UserInfoImpl;->setNickName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setUserName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getMobileNum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setMobile(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->isGIDUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setGIDUser(Z)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getSex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setSex(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setAddress(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setAvatarUrl(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getCarModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setCarModel(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setLevel(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setLevelName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getAge()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ecarx/sdk/user/UserAPIImpl;->handleAgeParse(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setAge(I)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getBirthday()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setBirthday(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v3}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ecarx/sdk/user/UserInfoImpl;->setUserId(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;

    .line 134
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoginUser():name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ecarx/sdk/user/UserInfoImpl;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mobile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ecarx/sdk/user/UserInfoImpl;->getMobile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ba} :catch_bb

    .line 141
    .end local v1    # "userInfo":Lcom/ecarx/sdk/user/UserInfoImpl;
    :goto_ba
    return-object v1

    .line 137
    :catch_bb
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v2, "UserAPI"

    const-string v3, "getLoginUser()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c6
    const/4 v1, 0x0

    goto :goto_ba
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v2}, Lcom/ecarx/sdk/user/LoginConfig;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "token":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRefreshToken():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 94
    .end local v1    # "token":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 90
    :catch_1f
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const-string v2, "UserAPI"

    const-string v3, "getRefreshToken()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getToken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v2}, Lcom/ecarx/sdk/user/LoginConfig;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "token":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToken():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 68
    .end local v1    # "token":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 64
    :catch_1f
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    const-string v2, "UserAPI"

    const-string v3, "getToken()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public hasLogin()Z
    .registers 5

    .prologue
    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginConfig:Lcom/ecarx/sdk/user/LoginConfig;

    invoke-virtual {v2}, Lcom/ecarx/sdk/user/LoginConfig;->isLogin()Z

    move-result v1

    .line 49
    .local v1, "isLogin":Z
    const-string v2, "UserAPI"

    const-string v3, "hasLogin():isLogin"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 55
    .end local v1    # "isLogin":Z
    :goto_d
    return v1

    .line 51
    :catch_e
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    const-string v2, "UserAPI"

    const-string v3, "hasLogin()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public launchLogin()Z
    .registers 6

    .prologue
    .line 100
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "ecarx.membercenter"

    const-string v4, "ecarx.membercenter.ui.login.LoginActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v3, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    const-string v3, "UserAPI"

    const-string v4, "launchLogin():true"

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 108
    const/4 v3, 0x1

    .line 113
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2d
    return v3

    .line 109
    :catch_2e
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const-string v3, "UserAPI"

    const-string v4, "launchLogin()"

    invoke-static {v3, v4, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method public notifyRefreshTokenExpired()Z
    .registers 5

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "receiver.csp.need.logout.action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    const-string v1, "UserAPI"

    const-string v2, "notifyRefreshTokenExpired():success"

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 255
    const/4 v1, 0x1

    .line 260
    :goto_14
    return v1

    .line 256
    :catch_15
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserAPI"

    const-string v2, "notifyRefreshTokenExpired:failed"

    invoke-static {v1, v2, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public notifyTokenExpired()Z
    .registers 5

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/user/UserAPIImpl;->mCtx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "receiver.csp.need.refresh.token.action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    const-string v1, "UserAPI"

    const-string v2, "notifyTokenExpired():success"

    invoke-static {v1, v2}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 242
    const/4 v1, 0x1

    .line 247
    :goto_14
    return v1

    .line 243
    :catch_15
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserAPI"

    const-string v2, "notifyTokenExpired:failed"

    invoke-static {v1, v2, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public setLoginCallback(Lcom/ecarx/sdk/user/callback/LoginCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/ecarx/sdk/user/callback/LoginCallback;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/user/UserAPIImpl;->_setLoginCallback(Lcom/ecarx/sdk/user/callback/ILoginCallBack;)Z

    move-result v0

    return v0
.end method
