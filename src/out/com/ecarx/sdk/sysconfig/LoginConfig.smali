.class public Lcom/ecarx/sdk/sysconfig/LoginConfig;
.super Lcom/ecarx/sdk/sysconfig/BaseConfig;
.source "LoginConfig.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final AGE:Ljava/lang/String; = "age"

.field private static final ALIAS:Ljava/lang/String; = "alias"

.field private static final AVATAR_URI:Ljava/lang/String; = "avatarUri"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field private static final CAR_MODEL:Ljava/lang/String; = "carModel"

.field private static final CREATE_TIME:Ljava/lang/String; = "createTime"

.field private static final ID_TOKEN:Ljava/lang/String; = "idToken"

.field private static final IS_LOGIN:Ljava/lang/String; = "isLogin"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final LEVEL_NAME:Ljava/lang/String; = "levelName"

.field private static final MOBILE_NUM:Ljava/lang/String; = "mobileNum"

.field private static final NICK_NAME:Ljava/lang/String; = "nickName"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field private static final REALNAMEVERIFIED:Ljava/lang/String; = "realNameVerified"

.field private static final REAL_NAME:Ljava/lang/String; = "realName"

.field private static final REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field private static final SEX:Ljava/lang/String; = "sex"

.field private static final TAG:Ljava/lang/String; = "LoginConfig"

.field private static final TC_TOKEN:Ljava/lang/String; = "tcToken"

.field private static final TOKEN:Ljava/lang/String; = "token"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static final USER_ID:Ljava/lang/String; = "userId"

.field private static final USER_NAME:Ljava/lang/String; = "userName"

.field private static loginConfig:Lcom/ecarx/sdk/sysconfig/LoginConfig;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;-><init>()V

    .line 60
    return-void
.end method

.method public static instance()Lcom/ecarx/sdk/sysconfig/LoginConfig;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/ecarx/sdk/sysconfig/LoginConfig;->loginConfig:Lcom/ecarx/sdk/sysconfig/LoginConfig;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/ecarx/sdk/sysconfig/LoginConfig;

    invoke-direct {v0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;-><init>()V

    sput-object v0, Lcom/ecarx/sdk/sysconfig/LoginConfig;->loginConfig:Lcom/ecarx/sdk/sysconfig/LoginConfig;

    .line 70
    :cond_b
    sget-object v0, Lcom/ecarx/sdk/sysconfig/LoginConfig;->loginConfig:Lcom/ecarx/sdk/sysconfig/LoginConfig;

    return-object v0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 231
    const-string v1, "/private/account/config_accessToken"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "ak":Ljava/lang/String;
    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAge()Ljava/lang/String;
    .registers 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "age"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAlias()Ljava/lang/String;
    .registers 3

    .prologue
    .line 279
    const-string v1, "/private/account/config_alias"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "alias":Ljava/lang/String;
    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "avatarUri"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "birthday"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCarModel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carModel"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCreateTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createTime"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIdToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 255
    const-string v1, "/private/account/config_idToken"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "idToken":Ljava/lang/String;
    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLevelName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "levelName"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMobileNum()Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileNum"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNickName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickName"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/sys_account_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRealName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "realName"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRealNameVerified()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    const-string v0, "realNameVerified"

    invoke-virtual {p0, v0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 243
    const-string v1, "/private/account/config_refreshToken"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "refreshToken":Ljava/lang/String;
    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "userId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/private/account/config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sex"

    invoke-virtual {p0, v1, v2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTcToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 267
    const-string v1, "/private/account/config_tcToken"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "tcToken":Ljava/lang/String;
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    const-string v1, "/private/account/config_token"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "token":Ljava/lang/String;
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    const-string v0, "userId"

    invoke-virtual {p0, v0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "userId"

    invoke-virtual {p0, v0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string v0, "userName"

    invoke-virtual {p0, v0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGIDUser()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public isLogin()Z
    .registers 3

    .prologue
    .line 212
    const-string v1, "isLogin"

    invoke-virtual {p0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "islogin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 214
    const/4 v1, 0x0

    .line 216
    :goto_d
    return v1

    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_d
.end method

.method public obtainUsers()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecarx/sdk/sysconfig/UserPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readAllAccounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removeUser(Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "/private/sys_config"

    const-string v1, "userId"

    invoke-virtual {p0, v0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->removeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "/private/sys_account"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->removeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p0, v0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->removeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    const-string p1, ""

    .line 227
    :cond_8
    const-string v0, "/private/account/config_accessToken"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setAge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "age"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "age"

    invoke-virtual {p0, v0, p2, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .registers 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 273
    const-string p1, ""

    .line 275
    :cond_8
    const-string v0, "/private/account/config_alias"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public setAvatarUri(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatarUri"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setBirthday(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "birthday"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "birthday"

    invoke-virtual {p0, v0, p2, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public setCarModel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "carModel"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carModel"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public setCreateTime(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createTime"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public setIdToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "idToken"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 249
    const-string p1, ""

    .line 251
    :cond_8
    const-string v0, "/private/account/config_idToken"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public setLevelName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "level"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "levelName"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public setLogin(Z)V
    .registers 4
    .param p1, "isLogin"    # Z

    .prologue
    .line 220
    const-string v0, "isLogin"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public setMobileNum(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "mobileNum"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileNum"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setNickName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickName"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/sys_account_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setRealName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realName"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setRealNameVerified(Ljava/lang/String;)V
    .registers 3
    .param p1, "realNameVerified"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string v0, "realNameVerified"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    const-string p1, ""

    .line 239
    :cond_8
    const-string v0, "/private/account/config_refreshToken"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setSex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "sex"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sex"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setTcToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "tcToken"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 261
    const-string p1, ""

    .line 263
    :cond_8
    const-string v0, "/private/account/config_tcToken"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 198
    const-string p1, ""

    .line 200
    :cond_8
    const-string v0, "/private/account/config_token"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "/private/account/config"

    const-string v1, "userId"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 4
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "userId"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "/private/account/config"

    const-string v1, "userId"

    invoke-virtual {p0, v0, v1, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/private/account/config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-virtual {p0, v0, v1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
