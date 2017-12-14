.class public Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;
.super Ljava/lang/Object;
.source "ILcdModeChangeCallBackWrapper.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/lcd/ILcd$ILcdModeChangeCallBack;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private openapiCallback:Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;)V
    .registers 4
    .param p1, "openapiCallback"    # Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;->openapiCallback:Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    .line 17
    sget-object v0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;->TAG:Ljava/lang/String;

    const-string v1, "ILcdModeChangeCallBackWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public onLcdDisplayModeChange(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;->openapiCallback:Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/ecarx/sdk/device/ILcdModeChangeCallBackWrapper;->openapiCallback:Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;

    invoke-interface {v0, p1}, Lcom/ecarx/sdk/device/lcd/ILcd$ILcdModeChangeCallBack;->onLcdDisplayModeChange(I)V

    .line 25
    :cond_9
    return-void
.end method
