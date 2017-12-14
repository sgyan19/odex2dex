.class public Lcom/ecarx/sdk/user/UserInfoImpl;
.super Ljava/lang/Object;
.source "UserInfoImpl.java"

# interfaces
.implements Lcom/ecarx/sdk/user/IUser;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserInfo"


# instance fields
.field private address:Ljava/lang/String;

.field private age:I

.field private avatarUrl:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private carModel:Ljava/lang/String;

.field private isGIDUser:Z

.field private level:Ljava/lang/String;

.field private levelName:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->isGIDUser:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->age:I

    return v0
.end method

.method public getAvatarURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCarModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->carModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getGIDUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/ecarx/sdk/user/UserInfoImpl;->isGIDUser()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->userName:Ljava/lang/String;

    .line 73
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isGIDUser()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->isGIDUser:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->address:Ljava/lang/String;

    .line 152
    return-object p0
.end method

.method public setAge(I)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "age"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->age:I

    .line 167
    return-object p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->avatarUrl:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setBirthday(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->birthday:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setCarModel(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "carModel"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->carModel:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public setGIDUser(Z)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "isGidUser"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->isGIDUser:Z

    .line 117
    return-object p0
.end method

.method public setLevel(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->level:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setLevelName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "levelName"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->levelName:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public setMobile(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->mobile:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->nickName:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setNickName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->nickName:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setSex(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "sex"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->sex:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->userId:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/ecarx/sdk/user/UserInfoImpl;
    .registers 2
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserInfoImpl;->userName:Ljava/lang/String;

    .line 122
    return-object p0
.end method
