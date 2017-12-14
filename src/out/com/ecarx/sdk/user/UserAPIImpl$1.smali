.class Lcom/ecarx/sdk/user/UserAPIImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UserAPIImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecarx/sdk/user/UserAPIImpl;->_setLoginCallback(Lcom/ecarx/sdk/user/callback/ILoginCallBack;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/user/UserAPIImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/user/UserAPIImpl;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 211
    :cond_6
    :goto_6
    return-void

    .line 177
    :cond_7
    const-string v2, "receiver.csp.login.success.action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    # getter for: Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    invoke-static {v2}, Lcom/ecarx/sdk/user/UserAPIImpl;->access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 179
    :try_start_17
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onLogin()"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    # getter for: Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    invoke-static {v2}, Lcom/ecarx/sdk/user/UserAPIImpl;->access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/sdk/user/callback/ILoginCallBack;->onLogin()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_6

    .line 181
    :catch_28
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onLogin() error"

    invoke-static {v2, v3, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_34
    const-string v2, "receiver.csp.logout.action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 187
    :try_start_3c
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onLogout()"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    # getter for: Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    invoke-static {v2}, Lcom/ecarx/sdk/user/UserAPIImpl;->access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/sdk/user/callback/ILoginCallBack;->onLogout()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_4d

    goto :goto_6

    .line 189
    :catch_4d
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onLogout() error"

    invoke-static {v2, v3, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 193
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_59
    const-string v2, "receiver.csp.login.cancelled.action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 195
    :try_start_61
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onUserCancelLogin()"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    # getter for: Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    invoke-static {v2}, Lcom/ecarx/sdk/user/UserAPIImpl;->access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/ecarx/sdk/user/callback/ILoginCallBack;->onUserCancelLogin()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_71} :catch_72

    goto :goto_6

    .line 197
    :catch_72
    move-exception v1

    .line 198
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onUserCancelLogin() error"

    invoke-static {v2, v3, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7e
    const-string v2, "receiver.csp.refresh.token.success.action"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    const-string v2, "RefreshSuccessToken"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    :try_start_8b
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onTokenRefresh()"

    invoke-static {v2, v3}, Lcom/ecarx/sdk/log/SdkLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/ecarx/sdk/user/UserAPIImpl$1;->this$0:Lcom/ecarx/sdk/user/UserAPIImpl;

    # getter for: Lcom/ecarx/sdk/user/UserAPIImpl;->mLoginCallback:Lcom/ecarx/sdk/user/callback/ILoginCallBack;
    invoke-static {v2}, Lcom/ecarx/sdk/user/UserAPIImpl;->access$000(Lcom/ecarx/sdk/user/UserAPIImpl;)Lcom/ecarx/sdk/user/callback/ILoginCallBack;

    move-result-object v2

    const-string v3, "RefreshSuccessToken"

    invoke-interface {v2, v3}, Lcom/ecarx/sdk/user/callback/ILoginCallBack;->onTokenRefresh(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9d} :catch_9f

    goto/16 :goto_6

    .line 206
    :catch_9f
    move-exception v1

    .line 207
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "UserAPI"

    const-string v3, "mLoginCallback.onTokenRefresh() error"

    invoke-static {v2, v3, v1}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method
