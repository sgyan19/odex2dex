.class public Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;
.super Ljava/lang/Object;
.source "VoiceAssistantPolicyWrapper.java"

# interfaces
.implements Lcom/ecarx/sdk/policy/IVoiceAssistantPolicy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private vaPolicy:Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;)V
    .registers 4
    .param p1, "adVAPolicy"    # Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;->vaPolicy:Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;

    .line 15
    sget-object v0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;->TAG:Ljava/lang/String;

    const-string v1, "VoiceAssistantPolicyWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getTTSPCMVolume()I
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;->vaPolicy:Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;->getTTSPCMVolume()I

    move-result v0

    return v0
.end method

.method public getWakeID()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ecarx/sdk/policy/VoiceAssistantPolicyWrapper;->vaPolicy:Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/policy/IVoiceAssistantPolicy;->getWakeID()I

    move-result v0

    return v0
.end method
