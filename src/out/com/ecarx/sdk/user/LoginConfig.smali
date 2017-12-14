.class public Lcom/ecarx/sdk/user/LoginConfig;
.super Ljava/lang/Object;
.source "LoginConfig.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final AGE:Ljava/lang/String; = "age"

.field public static final AUTHORITY:Ljava/lang/String; = "com.ecarx.userProvider"

.field private static final AVATAR_URL:Ljava/lang/String; = "avatarUrl"

.field private static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field private static final CAR_MODEL:Ljava/lang/String; = "carModel"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final IS_LOGIN:Ljava/lang/String; = "isLogin"

.field private static final LEVEL:Ljava/lang/String; = "level"

.field private static final LEVEL_NAME:Ljava/lang/String; = "levelName"

.field private static final MOBILE_NUM:Ljava/lang/String; = "mobileNum"

.field private static final NICK_NAME:Ljava/lang/String; = "nickName"

.field private static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PATH:Ljava/lang/String; = "user"

.field private static final REALNAMEVERIFIED:Ljava/lang/String; = "realNameVerified"

.field private static final REAL_NAME:Ljava/lang/String; = "realName"

.field private static final REFRESH_TOKEN:Ljava/lang/String; = "refreshToken"

.field private static final SEX:Ljava/lang/String; = "sex"

.field private static final USER_ID:Ljava/lang/String; = "userId"

.field private static final USER_NAME:Ljava/lang/String; = "userName"

.field private static volatile instance:Lcom/ecarx/sdk/user/LoginConfig;

.field private static mCtResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "content://com.ecarx.userProvider/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/user/LoginConfig;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    .line 75
    return-void
.end method

.method public static getSingleton(Landroid/content/Context;)Lcom/ecarx/sdk/user/LoginConfig;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->instance:Lcom/ecarx/sdk/user/LoginConfig;

    if-nez v0, :cond_13

    .line 64
    const-class v1, Lcom/ecarx/sdk/user/LoginConfig;

    monitor-enter v1

    .line 65
    :try_start_7
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->instance:Lcom/ecarx/sdk/user/LoginConfig;

    if-nez v0, :cond_12

    .line 66
    new-instance v0, Lcom/ecarx/sdk/user/LoginConfig;

    invoke-direct {v0, p0}, Lcom/ecarx/sdk/user/LoginConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ecarx/sdk/user/LoginConfig;->instance:Lcom/ecarx/sdk/user/LoginConfig;

    .line 68
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 70
    :cond_13
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->instance:Lcom/ecarx/sdk/user/LoginConfig;

    return-object v0

    .line 68
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "query: param userId is null or empty "

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_e
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    .line 85
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_15
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_33

    .line 90
    :cond_30
    const-string v0, "-1"

    .line 99
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_32
    return-object v0

    .line 92
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3d} :catch_3f

    move-result-object v0

    goto :goto_32

    .line 94
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_3f
    move-exception v7

    .line 95
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_45

    .line 96
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_45
    const-string v0, "-1"

    goto :goto_32
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessToken"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "age"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "avatarUrl"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "birthday"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carModel"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "level"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "levelName"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMobileNum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileNum"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nickName"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "password"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "realName"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshToken"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sex"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 9

    .prologue
    .line 123
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "userId"

    aput-object v1, v2, v0

    .line 124
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 126
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_9
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ecarx/sdk/user/LoginConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_30

    .line 128
    :cond_1c
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    const-string v1, "getUserId(): cursor is null or empty "

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_24} :catch_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_43

    .line 132
    :catch_24
    move-exception v7

    .line 133
    .local v7, "e":Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_43

    .line 135
    if-eqz v6, :cond_2d

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_2d
    const-string v0, "-1"

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return-object v0

    .line 130
    :cond_30
    :try_start_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const-string v0, "userId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3c} :catch_24
    .catchall {:try_start_30 .. :try_end_3c} :catchall_43

    move-result-object v0

    .line 135
    if-eqz v6, :cond_2f

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 135
    :catchall_43
    move-exception v0

    if-eqz v6, :cond_49

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/LoginConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userName"

    invoke-direct {p0, v0, v1}, Lcom/ecarx/sdk/user/LoginConfig;->query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isGIDUser()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isLogin()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 103
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "isLogin"

    aput-object v0, v2, v8

    .line 104
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_9
    sget-object v0, Lcom/ecarx/sdk/user/LoginConfig;->mCtResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ecarx/sdk/user/LoginConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_3e
    .catchall {:try_start_9 .. :try_end_19} :catchall_49

    move-result v0

    if-nez v0, :cond_23

    .line 115
    :cond_1c
    if-eqz v6, :cond_21

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    move v0, v8

    .line 119
    :cond_22
    :goto_22
    return v0

    .line 110
    :cond_23
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    const-string v0, "isLogin"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_3e
    .catchall {:try_start_23 .. :try_end_37} :catchall_49

    move-result v0

    .line 115
    if-eqz v6, :cond_22

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 112
    :catch_3e
    move-exception v7

    .line 113
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3f
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_49

    .line 115
    if-eqz v6, :cond_47

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_47
    move v0, v8

    .line 119
    goto :goto_22

    .line 115
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_49
    move-exception v0

    if-eqz v6, :cond_4f

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4f
    throw v0
.end method
