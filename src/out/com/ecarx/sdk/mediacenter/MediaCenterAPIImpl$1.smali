.class Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;
.super Ljava/lang/Object;
.source "MediaCenterAPIImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;->this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;->this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    invoke-static {p2}, Lecarx/xsf/mediacenter/IMediaCenterSvc$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IMediaCenterSvc;

    move-result-object v1

    # setter for: Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;
    invoke-static {v0, v1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->access$002(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;Lecarx/xsf/mediacenter/IMediaCenterSvc;)Lecarx/xsf/mediacenter/IMediaCenterSvc;

    .line 39
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;->this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    # getter for: Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mConnectionCallbacks:Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;
    invoke-static {v0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->access$100(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;)Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;->this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    const/4 v1, 0x0

    # setter for: Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mSvc:Lecarx/xsf/mediacenter/IMediaCenterSvc;
    invoke-static {v0, v1}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->access$002(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;Lecarx/xsf/mediacenter/IMediaCenterSvc;)Lecarx/xsf/mediacenter/IMediaCenterSvc;

    .line 45
    iget-object v0, p0, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl$1;->this$0:Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;

    # getter for: Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->mConnectionCallbacks:Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;
    invoke-static {v0}, Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;->access$100(Lcom/ecarx/sdk/mediacenter/MediaCenterAPIImpl;)Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ecarx/sdk/openapi/ECarXApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    .line 46
    return-void
.end method
