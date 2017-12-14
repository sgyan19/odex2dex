.class Lcom/ecarx/sdk/radio/RadioServerImpl$1;
.super Ljava/lang/Object;
.source "RadioServerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/radio/RadioServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/radio/RadioServerImpl;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$1;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$1;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    invoke-static {p2}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/radio/service/IRadioSvc;

    move-result-object v1

    # setter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;
    invoke-static {v0, v1}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$002(Lcom/ecarx/sdk/radio/RadioServerImpl;Lcom/ecarx/radio/service/IRadioSvc;)Lcom/ecarx/radio/service/IRadioSvc;

    .line 37
    const-string v0, "RadioServerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$1;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mIRadioSvc:Lcom/ecarx/radio/service/IRadioSvc;
    invoke-static {v0, v1}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$002(Lcom/ecarx/sdk/radio/RadioServerImpl;Lcom/ecarx/radio/service/IRadioSvc;)Lcom/ecarx/radio/service/IRadioSvc;

    .line 43
    const-string v0, "RadioServerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method
