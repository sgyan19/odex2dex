.class public Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;
.super Ljava/lang/Object;
.source "LocationRoadInfoImpl.java"

# interfaces
.implements Lcom/ecarx/sdk/navi/entitys/ILocationRoadInfo;


# instance fields
.field private fromPoiAddr:Ljava/lang/String;

.field private fromPoiLatitude:D

.field private fromPoiLongitude:D

.field private fromPoiName:Ljava/lang/String;

.field private toPoiAddr:Ljava/lang/String;

.field private toPoiLatitude:D

.field private toPoiLongitude:D

.field private toPoiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 38
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "ToPoiName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setToPoiName(Ljava/lang/String;)V

    .line 40
    const-string v2, "ToPoiAddr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setToPoiAddr(Ljava/lang/String;)V

    .line 41
    const-string v2, "ToPoiLatitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L

    invoke-static {v2, v3, v4}, Lcom/ecarx/sdk/tools/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setToPoiLatitude(D)V

    .line 42
    const-string v2, "ToPoiLongitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L

    invoke-static {v2, v3, v4}, Lcom/ecarx/sdk/tools/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setToPoiLongitude(D)V

    .line 43
    const-string v2, "FromPoiName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setFromPoiName(Ljava/lang/String;)V

    .line 44
    const-string v2, "FromPoiAddr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setFromPoiAddr(Ljava/lang/String;)V

    .line 45
    const-string v2, "FromPoiLatitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L

    invoke-static {v2, v3, v4}, Lcom/ecarx/sdk/tools/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setFromPoiLatitude(D)V

    .line 46
    const-string v2, "FromPoiLongitude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L

    invoke-static {v2, v3, v4}, Lcom/ecarx/sdk/tools/Utils;->string2double(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->setFromPoiLongitude(D)V

    .line 48
    const-string v2, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_77} :catch_78

    .line 53
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_77
    :goto_77
    return-void

    .line 49
    :catch_78
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_77
.end method


# virtual methods
.method public getFromPoiAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPoiLatitude()D
    .registers 3

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiLatitude:D

    return-wide v0
.end method

.method public getFromPoiLongitude()D
    .registers 3

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiLongitude:D

    return-wide v0
.end method

.method public getFromPoiName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public getToPoiAddr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getToPoiLatitude()D
    .registers 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiLatitude:D

    return-wide v0
.end method

.method public getToPoiLongitude()D
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiLongitude:D

    return-wide v0
.end method

.method public getToPoiName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiName:Ljava/lang/String;

    return-object v0
.end method

.method public setFromPoiAddr(Ljava/lang/String;)V
    .registers 2
    .param p1, "fromPoiAddr"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiAddr:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFromPoiLatitude(D)V
    .registers 3
    .param p1, "fromPoiLatitude"    # D

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiLatitude:D

    .line 85
    return-void
.end method

.method public setFromPoiLongitude(D)V
    .registers 3
    .param p1, "fromPoiLongitude"    # D

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiLongitude:D

    .line 81
    return-void
.end method

.method public setFromPoiName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fromPoiName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->fromPoiName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setToPoiAddr(Ljava/lang/String;)V
    .registers 2
    .param p1, "toPoiAddr"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiAddr:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setToPoiLatitude(D)V
    .registers 3
    .param p1, "toPoiLatitude"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiLatitude:D

    .line 65
    return-void
.end method

.method public setToPoiLongitude(D)V
    .registers 3
    .param p1, "toPoiLongitude"    # D

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiLongitude:D

    .line 69
    return-void
.end method

.method public setToPoiName(Ljava/lang/String;)V
    .registers 2
    .param p1, "toPoiName"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ecarx/sdk/navi/entitys/LocationRoadInfoImpl;->toPoiName:Ljava/lang/String;

    .line 57
    return-void
.end method
