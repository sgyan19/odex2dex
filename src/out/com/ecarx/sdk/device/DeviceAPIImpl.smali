.class public Lcom/ecarx/sdk/device/DeviceAPIImpl;
.super Lcom/ecarx/sdk/device/DeviceAPI;
.source "DeviceAPIImpl.java"


# static fields
.field public static final TEST_DVRID:Ljava/lang/String; = "861911110003"

.field public static final TEST_IHU_ID:Ljava/lang/String; = "ihufe3ad00003"

.field public static final TEST_VIN:Ljava/lang/String; = "FE3AD201609220003"

.field private static final TEST_XDSN:Ljava/lang/String; = "ecarxihufe3ad00003"


# instance fields
.field private adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

.field private final mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ecarx/sdk/device/DeviceAPI;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->mCtx:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecarx/xui/adaptapi/device/Device;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/device/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    .line 27
    return-void
.end method


# virtual methods
.method public getDVRID()Ljava/lang/String;
    .registers 6

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "dvrid":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 60
    const-string v0, "861911110003"

    .line 62
    :cond_9
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDVRID():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_22

    .line 67
    .end local v0    # "dvrid":Ljava/lang/String;
    :goto_21
    return-object v0

    .line 64
    .restart local v0    # "dvrid":Ljava/lang/String;
    :catch_22
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getICCID()Ljava/lang/String;
    .registers 6

    .prologue
    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getICCID()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "iccid":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getICCID():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 98
    .end local v1    # "iccid":Ljava/lang/String;
    :goto_22
    return-object v1

    .line 94
    :catch_23
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getICCID()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getIHUID()Ljava/lang/String;
    .registers 6

    .prologue
    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getIhuId()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "ihuid":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIHUID():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 39
    .end local v1    # "ihuid":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 35
    :catch_1f
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getIHUID()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getLcd()Lcom/ecarx/sdk/device/lcd/ILcd;
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProjectCode()Ljava/lang/String;
    .registers 6

    .prologue
    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getProjectCode()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "vehicleType":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProjectCode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 134
    .end local v1    # "vehicleType":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 130
    :catch_1f
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getProjectCode()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getSupplierCode()Ljava/lang/String;
    .registers 6

    .prologue
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getSupplierCode()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "vehicleType":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupplierCode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 152
    .end local v1    # "vehicleType":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 148
    :catch_1f
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getSupplierCode()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getVIN()Ljava/lang/String;
    .registers 6

    .prologue
    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getVin()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "vin":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVIN():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 52
    .end local v1    # "vin":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 48
    :catch_1f
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getVIN()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getVehicleType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getVehicleType()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "vehicleType":Ljava/lang/String;
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 116
    .end local v1    # "vehicleType":Ljava/lang/String;
    :goto_1e
    return-object v1

    .line 112
    :catch_1f
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getVehicleType()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getXDSN()Ljava/lang/String;
    .registers 6

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/ecarx/sdk/device/DeviceAPIImpl;->adaptDevice:Lcom/ecarx/xui/adaptapi/device/Device;

    invoke-virtual {v2}, Lcom/ecarx/xui/adaptapi/device/Device;->getXdsn()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "xdsn":Ljava/lang/String;
    const-string v2, "XE1109S0AAH5V00090001194"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 76
    const-string v1, "XE1109S0AAH5V00000000194"

    .line 78
    :cond_10
    const-string v2, "UserAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getXdsn():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 84
    .end local v1    # "xdsn":Ljava/lang/String;
    :goto_28
    return-object v1

    .line 80
    :catch_29
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IDeviceAPI"

    const-string v3, "getXdsn()"

    invoke-static {v2, v3, v0}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    const/4 v1, 0x0

    goto :goto_28
.end method
