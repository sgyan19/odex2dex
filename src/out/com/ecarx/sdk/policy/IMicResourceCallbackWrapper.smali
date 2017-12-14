.class public Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;
.super Ljava/lang/Object;
.source "IMicResourceCallbackWrapper.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/policy/IMicResourceCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/sdk/policy/IMicResourceCallback;)V
    .registers 4
    .param p1, "micCallback"    # Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    .line 15
    sget-object v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->TAG:Ljava/lang/String;

    const-string v1, "IMicResourceCallbackWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public checkSameHandling(Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;)Z
    .registers 5
    .param p1, "micCallback"    # Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;

    .prologue
    .line 19
    sget-object v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSameHandling IN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSameHandling Current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    .line 22
    iget-object v0, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method

.method public onAbort(I)V
    .registers 3
    .param p1, "inRequestType"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    invoke-interface {v0, p1}, Lcom/ecarx/sdk/policy/IMicResourceCallback;->onAbort(I)V

    .line 30
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ecarx/sdk/policy/IMicResourceCallbackWrapper;->openapiMicCallback:Lcom/ecarx/sdk/policy/IMicResourceCallback;

    invoke-interface {v0}, Lcom/ecarx/sdk/policy/IMicResourceCallback;->onResume()V

    .line 35
    return-void
.end method
