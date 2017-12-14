.class public Lcom/ecarx/sdk/policy/AudioPolicyWrapper;
.super Ljava/lang/Object;
.source "AudioPolicyWrapper.java"

# interfaces
.implements Lcom/ecarx/sdk/policy/IAudioPolicy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adAudioPolicy:Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;)V
    .registers 4
    .param p1, "adaptAudioPolicy"    # Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    .line 19
    iput-object p1, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->adAudioPolicy:Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    .line 20
    sget-object v0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    const-string v1, "AudioPolicyWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private _attachMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z
    .registers 9
    .param p1, "observer"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p1, :cond_4

    .line 67
    :goto_3
    return v2

    .line 58
    :cond_4
    iget-object v3, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v3

    .line 59
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_attachMicObserver request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 62
    new-instance v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;-><init>(Lcom/ecarx/sdk/policy/IMicResourceCallback;)V

    .line 63
    .local v0, "callbackWrapper":Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;
    iget-object v2, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v2, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_attachMicObserver callbackMap.put : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_3

    .line 68
    .end local v0    # "callbackWrapper":Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_50
    move-exception v2

    monitor-exit v3
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v2

    .line 67
    .restart local v1    # "key":Ljava/lang/String;
    :cond_53
    :try_start_53
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_50

    goto :goto_3
.end method

.method private _checkMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z
    .registers 6
    .param p1, "observer"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_4

    .line 96
    :goto_3
    return v1

    .line 91
    :cond_4
    iget-object v2, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v2

    .line 92
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 94
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_3

    .line 97
    .end local v0    # "key":Ljava/lang/String;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 96
    .restart local v0    # "key":Ljava/lang/String;
    :cond_19
    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_16

    goto :goto_3
.end method

.method private _detachMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z
    .registers 8
    .param p1, "observer"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_4

    .line 83
    :goto_3
    return v1

    .line 75
    :cond_4
    iget-object v2, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v2

    .line 76
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_detachMicObserver request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 79
    iget-object v1, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_detachMicObserver callbackMap.remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ecarx/sdk/log/SdkLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_3

    .line 84
    .end local v0    # "key":Ljava/lang/String;
    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1

    .line 83
    .restart local v0    # "key":Ljava/lang/String;
    :cond_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4b

    goto :goto_3
.end method

.method private getMicResourceCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    monitor-enter v1

    .line 50
    :try_start_3
    iget-object v0, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->callbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public getAudioStreamTypeForFunction(Ljava/lang/String;)I
    .registers 3
    .param p1, "audioFunction"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->adAudioPolicy:Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;->getAudioStreamTypeForFunction(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public releaseMic(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z
    .registers 5
    .param p1, "callback"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->_checkMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 40
    iget-object v1, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->adAudioPolicy:Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->getMicResourceCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;->releaseMic(Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;)Z

    move-result v0

    .line 41
    .local v0, "flag":Z
    if-eqz v0, :cond_1b

    .line 42
    invoke-direct {p0, p1}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->_detachMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z

    move-result v1

    .line 45
    .end local v0    # "flag":Z
    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public requestMic(ILcom/ecarx/sdk/policy/IMicResourceCallback;)Z
    .registers 5
    .param p1, "requestType"    # I
        .annotation build Lcom/ecarx/sdk/policy/IAudioPolicy$MicRequestType;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->_attachMicObserver(Lcom/ecarx/sdk/policy/IMicResourceCallback;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 31
    iget-object v0, p0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->adAudioPolicy:Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;->getMicResourceCallback(Ljava/lang/String;)Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;->requestMic(ILcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;)Z

    move-result v0

    .line 33
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
