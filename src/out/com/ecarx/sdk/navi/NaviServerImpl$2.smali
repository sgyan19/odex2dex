.class Lcom/ecarx/sdk/navi/NaviServerImpl$2;
.super Landroid/os/Handler;
.source "NaviServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/navi/NaviServerImpl;)V
    .registers 2

    .prologue
    .line 446
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$2;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 457
    :goto_6
    return-void

    .line 451
    :pswitch_7
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$2;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connected"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 454
    :pswitch_17
    iget-object v0, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$2;->this$0:Lcom/ecarx/sdk/navi/NaviServerImpl;

    # getter for: Lcom/ecarx/sdk/navi/NaviServerImpl;->mCtx:Landroid/content/Context;
    invoke-static {v0}, Lcom/ecarx/sdk/navi/NaviServerImpl;->access$100(Lcom/ecarx/sdk/navi/NaviServerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "disconnect"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 449
    nop

    :pswitch_data_28
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_17
    .end packed-switch
.end method
