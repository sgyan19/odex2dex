.class public final Lcom/ecarx/sdk/policy/PolicyAPIImpl;
.super Lcom/ecarx/sdk/policy/PolicyAPI;
.source "PolicyAPIImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

.field private audioPolicy:Lcom/ecarx/sdk/policy/IAudioPolicy;

.field private mCtx:Landroid/content/Context;

.field private storagePolicy:Lcom/ecarx/sdk/policy/IStoragePolicy;

.field private voiceAssistantPolicy:Lcom/ecarx/sdk/policy/IVoiceAssistantPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ecarx/sdk/policy/PolicyAPI;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->mCtx:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    .line 25
    iget-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    if-eqz v0, :cond_55

    .line 26
    new-instance v0, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;

    iget-object v1, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getAudioPolicy()Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecarx/sdk/policy/AudioPolicyWrapper;-><init>(Lcom/ecarx/xui/adaptapi/policy/IAudioPolicy;)V

    iput-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->audioPolicy:Lcom/ecarx/sdk/policy/IAudioPolicy;

    .line 27
    new-instance v0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;

    iget-object v1, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getStoragePolicy()Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;-><init>(Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;)V

    iput-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->storagePolicy:Lcom/ecarx/sdk/policy/IStoragePolicy;

    .line 28
    new-instance v0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;

    iget-object v1, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->adaptPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    invoke-virtual {v1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getVoiceAssistantPolicy()Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;-><init>(Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;)V

    iput-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->voiceAssistantPolicy:Lcom/ecarx/sdk/policy/IVoiceAssistantPolicy;

    .line 29
    sget-object v0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect to adapt api ok , this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_54
    return-void

    .line 31
    :cond_55
    sget-object v0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->TAG:Ljava/lang/String;

    const-string v1, "Connect to adapt api error "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54
.end method


# virtual methods
.method public getAudioPolicy()Lcom/ecarx/sdk/policy/IAudioPolicy;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->audioPolicy:Lcom/ecarx/sdk/policy/IAudioPolicy;

    return-object v0
.end method

.method public getStoragePolicy()Lcom/ecarx/sdk/policy/IStoragePolicy;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->storagePolicy:Lcom/ecarx/sdk/policy/IStoragePolicy;

    return-object v0
.end method

.method public getVoiceAssistantPolicy()Lcom/ecarx/sdk/policy/IVoiceAssistantPolicy;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ecarx/sdk/policy/PolicyAPIImpl;->voiceAssistantPolicy:Lcom/ecarx/sdk/policy/IVoiceAssistantPolicy;

    return-object v0
.end method
