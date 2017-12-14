.class public Lcom/ecarx/sdk/device/DayNightModeWrapper;
.super Ljava/lang/Object;
.source "DayNightModeWrapper.java"

# interfaces
.implements Lcom/ecarx/sdk/device/lcd/ILcd;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/ecarx/sdk/device/DayNightModeWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;)V
    .registers 4
    .param p1, "adaptILcd"    # Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    .line 21
    sget-object v0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    const-string v1, "DayNightModeWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method private _attachDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z
    .registers 9
    .param p1, "observer"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    const/4 v2, 0x0

    .line 60
    if-nez p1, :cond_4

    .line 72
    :goto_3
    return v2

    .line 63
    :cond_4
    iget-object v3, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v3

    .line 64
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_attachDayNightObserver request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v4, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 67
    new-instance v0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;

    invoke-direct {v0, p1}, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;-><init>(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)V

    .line 68
    .local v0, "callbackWrapper":Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;
    iget-object v2, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_attachDayNightObserver callbackMap.put : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_3

    .line 73
    .end local v0    # "callbackWrapper":Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v2

    .line 72
    .restart local v1    # "key":Ljava/lang/String;
    :cond_53
    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    goto :goto_3
.end method

.method private _checkDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z
    .registers 6
    .param p1, "observer"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p1, :cond_4

    .line 101
    :goto_3
    return v1

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v2

    .line 97
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 99
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_3

    .line 102
    .end local v0    # "key":Ljava/lang/String;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 101
    .restart local v0    # "key":Ljava/lang/String;
    :cond_19
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_16

    goto :goto_3
.end method

.method private _detachDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z
    .registers 8
    .param p1, "observer"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_4

    .line 88
    :goto_3
    return v1

    .line 80
    :cond_4
    iget-object v2, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v2

    .line 81
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_detachDayNightObserver request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 84
    iget-object v1, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/ecarx/sdk/device/DayNightModeWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_detachDayNightObserver callbackMap.remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_3

    .line 89
    .end local v0    # "key":Ljava/lang/String;
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1

    .line 88
    .restart local v0    # "key":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    goto :goto_3
.end method

.method private getDayNightModeCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v1

    .line 55
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public getLcdDisplayMode()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    if-eqz v0, :cond_b

    .line 27
    iget-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;->getLcdDisplayMode()I

    move-result v0

    .line 29
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public registerLcdDisplayModeCallBack(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z
    .registers 4
    .param p1, "callback"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/device/DayNightModeWrapper;->_attachDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    if-eqz v0, :cond_19

    .line 35
    iget-object v0, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ecarx/sdk/device/DayNightModeWrapper;->getDayNightModeCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;->registerLcdDisplayModeCallBack(Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;)Z

    move-result v0

    .line 37
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public unregisterLcdDisplayModeCallBack(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z
    .registers 5
    .param p1, "callback"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/device/DayNightModeWrapper;->_checkDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 43
    iget-object v1, p0, Lcom/ecarx/sdk/device/DayNightModeWrapper;->adaptILcd:Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ecarx/sdk/device/DayNightModeWrapper;->getDayNightModeCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ecarx/xui/adaptapi/device/lcd/ILcd;->unregisterLcdDisplayModeCallBack(Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;)Z

    move-result v0

    .line 44
    .local v0, "flag":Z
    if-eqz v0, :cond_1b

    .line 45
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/device/DayNightModeWrapper;->_detachDayNightObserver(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)Z

    move-result v1

    .line 48
    .end local v0    # "flag":Z
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method
